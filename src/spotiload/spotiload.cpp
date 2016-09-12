#include "stdafx.h"

#include "TrackData.h"

#include "options.h"

#include "MP3Writer.h"

#include "image.h"

#ifdef _WIN32
#pragma comment(lib, "../external/libspotify/lib/libspotify.lib")
#endif

static AudioWriter*							m_writer					= 0;
static bool									g_trackEnded				= false;
static size_t								g_numSamplesCurrentTrack	= 0;
static size_t								g_playDurationSecs			= 0xffffffff;
static STrackData							g_currentTrackData;
static bool									m_loggedIn					= false;
static Options								g_options;
static std::vector<unsigned char>			g_appkey;

static sp_session_config					g_spotify_session_config;
static sp_session_callbacks					g_session_callbacks;
static sp_playlist_callbacks				g_playlist_callbacks;
static sp_playlistcontainer_callbacks		g_playlistcontainer_callbacks;
static sp_session*							g_session = 0;
static ptypes::datetime						g_downloadStartTime = 0;

typedef std::vector<STrack>					TTrackList;
typedef std::vector<TTrackList>				TTrackListList;

static std::string							g_cacheLocation;
static std::string							g_settingsLocation;
static std::string							g_traceFile;

static INT16								g_trackMaxVolume = 0;

enum EState
{
	eWaitForTrackLoad,
	eWaitForTrackEnd,
	eFinalizeTrack
};

class AlbumRef
{
	sp_album* m_a;
public:
	AlbumRef( sp_album* a ) : m_a(a) { sp_album_add_ref(m_a); }
	AlbumRef( const AlbumRef& r ) : m_a(r.m_a) { sp_album_add_ref(m_a); }
	~AlbumRef() { sp_album_release(m_a); }
};

class ArtistRef
{
	sp_artist* m_a;
public:
	ArtistRef( sp_artist* a ) : m_a(a) { sp_artist_add_ref(m_a); }
	ArtistRef( const ArtistRef& r ) : m_a(r.m_a) { sp_artist_add_ref(m_a); }
	~ArtistRef() { sp_artist_release(m_a); }
};

class LinkRef
{
	sp_link* m_a;
public:
	LinkRef( sp_link* a, bool _addRef = false ) : m_a(a) { if( _addRef ) sp_link_add_ref(m_a); }
	LinkRef( const LinkRef& r ) : m_a(r.m_a) { sp_link_add_ref(m_a); }
	~LinkRef() { sp_link_release(m_a); }
};

#define ERROR_EXIT( S ) { LOG( "Error: " << S ); return -1; }


void onSpotifyLoggedIn(sp_session *session, sp_error error)
{
	if( error != SP_ERROR_OK )
	{
		LOG( "Login failed: " << sp_error_message(error) )
		exit(-1);
	}
	else
	{
		LOG( "Login success" );
		m_loggedIn = true;
	}
}

void onSpotifyLoggedOut(sp_session *session)
{
	m_loggedIn = false;
}

void onSpotifyMetadataUpdated(sp_session *session)
{
}

void onSpotifyConnectionError(sp_session *session, sp_error _err )
{
	LOG("Spotify connection error: " << sp_error_message(_err) );
}
void onSpotifyMessageToUser(sp_session *session, const char* _msg)
{
	LOGD("Msg to user: " << _msg);
}
void onSpotifyNotifyMainThread(sp_session *session)
{
//	LOGD("");
}


int onSpotifyMusicDelivery(sp_session *session, const sp_audioformat *format, const void *frames, int num_frames)
{
	if( format->sample_type != SP_SAMPLETYPE_INT16_NATIVE_ENDIAN )
	{
		LOGD( "Unknown sample type " << format->sample_type << ", aborting audio data transfer" );
		return 0;
	}

	const int numSamples = num_frames * format->channels;

	if( !m_writer )
	{
		LOGD( "Got audio data but there is no writer!" );
		return num_frames;
	}

	INT16* pSamples = (INT16*)frames;
	for (int i = 0; i < numSamples; i++)
	{
		if (pSamples[i] > g_trackMaxVolume) g_trackMaxVolume = pSamples[i];
	}

	double volPercent = 100.0 * g_trackMaxVolume / INT16_MAX;

	m_writer->appendData( (short*)frames, numSamples );

	g_numSamplesCurrentTrack += numSamples;

	size_t playDurationSecs = g_numSamplesCurrentTrack / (format->sample_rate * format->channels);

	if( playDurationSecs != g_playDurationSecs )
	{
		g_playDurationSecs = playDurationSecs;

		size_t minutes = g_playDurationSecs / 60;
		size_t secs = g_playDurationSecs - minutes * 60;

		size_t durationSecs = g_currentTrackData.durationMS / 1000;
		size_t minutesTotal	= durationSecs / 60;
		size_t secsTotal	= durationSecs - minutesTotal * 60;

		printf("%02u:%02u / %02u:%02u  Max. Vol.: %03f\r", (unsigned int)minutes, (unsigned int)secs, (unsigned int)minutesTotal, (unsigned int)secsTotal, volPercent);
	}

	return num_frames;
}

void onSpotifyPlayTokenLost(sp_session *session)
{
	LOG( "Playback has been paused because the Spotify account is used elsewhere. Will resume download in 1 hour" );

	int waitCount	= 60 * 60;
	int waitCounter	= 0;

	while( waitCounter++ < waitCount )
	{
		ptypes::psleep(990);
		int nextTimeout=0;
		sp_session_process_events(g_session,&nextTimeout);
	}

	sp_session_player_play(g_session,true);
}


void onSpotifyLogMessage(sp_session *session, const char* _msg)
{
//	::OutputDebugStringA(_msg);
//	::OutputDebugStringA("\n");
}

void onSpotifyEndOfTrack(sp_session *session)
{
	g_trackEnded = true;
}

void onSpotifyStreamingError(sp_session *session, sp_error error)
{
	LOG( "Spotify Streaming Error: " << sp_error_message(error) );
}
void onSpotifyUserInfoUpdated(sp_session *session)
{
}
void onSpotifyStartPlayback(sp_session *session)
{
}
void onSpotifyStopPlayback(sp_session *session)
{
}

void onSpotifyGetAudioBufferStats(sp_session *session, sp_audio_buffer_stats *stats)
{
	// try to get data from spotify faster
	stats->samples = 0;
	stats->stutter = 1;
}

void onSpotifyOfflineStatusUpdated(sp_session *session)
{
	LOGD( "" );
}

void onSpotifyOfflineError(sp_session *session, sp_error error)
{
	if( error != SP_ERROR_OK )
		LOG( "Spotify Offline Error: " << sp_error_message(error) );
}

void onSpotifyCredentialsBlobUpdated(sp_session *session, const char* _msg)
{
//	LOGD( _msg );
}

void onSpotifyConnectionStateUpdated(sp_session *session)
{
}

void onSpotifyScrobbleError(sp_session *session, sp_error error)
{
	LOG( "Scrobble Error: " << sp_error_message(error) );
}

void onSpotifyPrivateSessionModeChanged(sp_session *session, bool _isPrivate )
{
	LOGD( "" );
}

// _____________________________________________________________________________
// 
//
void onSpotifyPlaylistContainerPlaylistAdded( sp_playlistcontainer *pc, sp_playlist *playlist, int position, void *userdata )
{
	LOGD( "" );
}

void onSpotifyPlaylistContainerPlaylistRemoved( sp_playlistcontainer *pc, sp_playlist *playlist, int position, void *userdata )
{
	LOGD( "" );
}

void onSpotifyPlaylistContainerPlaylistMoved( sp_playlistcontainer *pc, sp_playlist *playlist, int oldPosition, int newPosition, void *userdata )
{
	LOGD( "" );
}

void onSpotifyPlaylistContainerLoaded( sp_playlistcontainer *pc, void *userdata )
{
	LOGD( "" );
}

// _____________________________________________________________________________
// 
//
void onSpotifyPlaylistTracksAdded( sp_playlist *pl, sp_track *const *tracks, int num_tracks, int position, void *userdata )
{
	LOGD( "" );
//	jobject obj = (jobject)userdata;
//	for( int i=0; i<num_tracks; ++i )
//		callVoidMethod( obj, "onSpotifyPlaylistTrackAdded", "(III)V", (int)pl, (int)tracks[i], position + i );
}
void onSpotifyPlaylistTracksRemoved( sp_playlist *pl, const int *tracks, int num_tracks, void *userdata )
{
	LOGD( "" );
//	jobject obj = (jobject)userdata;
//	for( int i=num_tracks-1; i>=0; --i )
//		callVoidMethod( obj, "onSpotifyPlaylistTrackRemoved", "(II)V", (int)pl, (int)tracks[i] );
}
void onSpotifyPlaylistTracksMoved( sp_playlist *pl, const int *tracks, int num_tracks, int new_position, void *userdata )
{
	LOGD( "playlist tracks moved: no support yet");
	//	jobject obj = (jobject)userdata;
	//	for( int i=0; i<num_tracks; ++i )
	//		callVoidMethod( obj, "onSpotifyPlaylistTracksMoved", "(III)V", (int)pl, (int)tracks[i], new_position + i );
}
void onSpotifyPlaylistRenamed( sp_playlist *pl, void *userdata )
{
	LOGD( "" );
}
void onSpotifyPlaylistStateChanged( sp_playlist *pl, void *userdata )
{
	LOGD( "" );
}
void onSpotifyPlaylistUpdateInProgress( sp_playlist *pl, bool done, void *userdata )
{
	LOGD( "" );
}
void onSpotifyPlaylistMetadataUpdated( sp_playlist *pl, void *userdata )
{
}
void onSpotifyPlaylistTrackCreatedChanged( sp_playlist *pl, int position, sp_user* user, int when, void *userdata )
{
	LOGD( "" );
}
void onSpotifyPlaylistTrackSeenChanged( sp_playlist *pl, int position, bool seen, void *userdata )
{
	LOGD( "" );
}
void onSpotifyPlaylistDescriptionChanged( sp_playlist *pl, const char* desc, void *userdata )
{
	LOGD( desc );
}
void onSpotifyPlaylistImageChanged( sp_playlist *pl, const byte* image, void *userdata )
{
	LOGD("Playlist image changed: no support yet!");
}
void onSpotifyPlaylistTrackMessageChanged( sp_playlist *pl, int position, const char* message, void *userdata )
{
	LOGD( position << " " << message );
}
void onSpotifyPlaylistSubscribersChanged( sp_playlist *pl, void *userdata )
{
	LOGD( "" );
}

void SP_CALLCONV onSpotifyAlbumBrowseLoaded(sp_albumbrowse *result, void *userdata)
{
//	LOGD("");
}

int getTrackData( STrackData& _trackData, const STrack& _t )
{
	sp_track* t = _t;

	_trackData.playlist = _t.playlist;
	_trackData.srcIsPlaylist = !_t.playlist.empty();
	_trackData.srcIsAlbum = !_t.album.empty();

	// title
	const char* name = sp_track_name( t );
	
	if( !name )
		ERROR_EXIT( "Failed to retrieve track name" );

	_trackData.title = name;

	_trackData.durationMS = sp_track_duration(t);

	sp_link* link = sp_link_create_from_track(t,0);
	char linkString[256];
	sp_link_as_string( link, linkString, sizeof(linkString) );
	_trackData.spotifyURI = linkString;
	sp_link_release( link );

	// album name
	sp_album* const a = sp_track_album( t );

	if( !a )
		ERROR_EXIT( "Failed to retrieve track album" );

	AlbumRef albumRef(a);

	WAIT_FOR_LOAD( sp_album_is_loaded(a) );

	for( size_t i=0; i<3; ++i )
	{
		if( _trackData.images[i] )
		{
			delete _trackData.images[i];
			_trackData.images[i] = 0;
		}

		const byte* img = sp_album_cover( a, (sp_image_size)i );

		if( img )
			_trackData.images[i] = new Image(g_session, img);
	}

	name = sp_album_name(a);
	if( !name )
		ERROR_EXIT("Failed to retrieve name for album");
	_trackData.album = name;

	// album year
	_trackData.albumYear = sp_album_year( a );

	// artist
	sp_artist* artist = sp_track_artist(t,0);
	if( !artist )
		ERROR_EXIT("Failed to retrieve track artist");

	ArtistRef artistRef(artist);

	WAIT_FOR_LOAD( sp_artist_is_loaded(artist) );

	// if we couldn't get the album image, try the artist image
	for( size_t i=0; i<3; ++i )
	{
		if( !_trackData.images[i] )
		{
			const byte* img = sp_artist_portrait( artist, (sp_image_size)i );

			if( img )
				_trackData.images[i] = new Image(g_session, img);
		}
	}

	name = sp_artist_name( artist );
	if( !name )
		ERROR_EXIT( "Failed to retrieve artist name" );

	_trackData.artist = name;

	// album artist
	artist = sp_album_artist(a);

	ArtistRef albumArtistRef(artist);

	if( !artist )
		ERROR_EXIT("Failed to retrieve album artist");

	name = sp_artist_name( artist );

	if( !name )
		ERROR_EXIT( "Failed to retrieve album artist name" );

	_trackData.albumArtist = name;

	// track number
	sp_albumbrowse* ab = sp_albumbrowse_create( g_session, a, onSpotifyAlbumBrowseLoaded, NULL );
	if( !ab )
		ERROR_EXIT( "Failed to create albumbrowse for album " << _trackData.album );

	WAIT_FOR_LOAD( sp_albumbrowse_is_loaded(ab) );

	const int cnt = sp_albumbrowse_num_tracks(ab);

	_trackData.trackNum = -1;

	for( int i=0; i<cnt; ++i )
	{
		if( sp_albumbrowse_track(ab,i) == t )
		{
			_trackData.trackNum = i;
			break;
		}
	}

	const char* review = sp_albumbrowse_review( ab );
	const char* copyright = sp_albumbrowse_copyright( ab, 0 );

	_trackData.review = review ? review : "";
	_trackData.copyright = copyright ? copyright : "";

	sp_albumbrowse_release(ab);

	return 0;
}

void createM3U( const TTrackList& _trackQueue )
{
	std::string m3uName = _trackQueue.front().playlist;
	
	if( m3uName.empty() )
		m3uName = _trackQueue.front().album;

	if( m3uName.empty() )
		return;	// was single track download, no M3U needed

	m3uName = AudioWriter::escapeFilename(m3uName);

	LOG( "Creating M3U file" );

	std::string m3uPath;

	FILE* hFile = 0;

	for( size_t i=0; i<_trackQueue.size(); ++i )
	{
		const STrack& track = _trackQueue[i];

		if( track.writtenFilename.empty() )
			continue;

		size_t pathEnd = track.writtenFilename.find_last_of( '\\' );
		if( pathEnd == std::string::npos )
			pathEnd = track.writtenFilename.find_last_of( '/' );

		std::string path;
		std::string name = track.writtenFilename;

		if( pathEnd != std::string::npos )
		{
			path = track.writtenFilename.substr( 0, pathEnd+1 );
			name = track.writtenFilename.substr( pathEnd+1 );
		}

		if( m3uPath.empty() )
		{
			m3uPath = path;
			std::string pathName = m3uPath + m3uName + ".m3u";
			hFile = AudioWriter::myfopen( pathName, "w" );

			if( !hFile )
			{
				LOG( "Failed to create M3U file at " << pathName << ", errno " << errno );
				return;
			}
		}

		fputs( (AudioWriter::tolocalestring(name) + "\n").c_str(), hFile );
	}

	fclose( hFile );
}

int downloadTracks( TTrackList& _trackQueue )
{
	if( _trackQueue.empty() )
	{
		LOG( "Nothing to do, track list is empty" );
		return 0;
	}

	size_t numTracksProcessed = 0;
	const size_t numTracksTotal = _trackQueue.size();

	EState state = eWaitForTrackLoad;

	int nextTimeout = 0;

	for( size_t i=0; i<_trackQueue.size(); ++i )
	{
		_trackQueue[i].findPlayable(g_session);

		sp_error err = sp_session_player_prefetch(g_session, _trackQueue[i]);

		if( err != SP_ERROR_OK )
			LOG( "Unable to prefetch track " << (i+1) << ", but don't worry" );

		if(i == 0)
		{
			if( !_trackQueue[i].album.empty() )
				LOG( "Downloading album '" << AudioWriter::tolocalestring(_trackQueue[i].album) << "'" )
			else if( !_trackQueue[i].playlist.empty() )
				LOG( "Downloading playlist '" << AudioWriter::tolocalestring(_trackQueue[i].playlist) << "'" )
		}
	}

	LOG( "Will download "<< _trackQueue.size() << " tracks" );

	for( size_t trackIdx=0; trackIdx<_trackQueue.size(); )
	{
		STrack& track = _trackQueue[trackIdx];

		sp_track* t = track;

		switch( state )
		{
		case eWaitForTrackLoad:
			{
				WAIT_FOR_LOAD( sp_track_is_loaded(t) );

				g_downloadStartTime = ptypes::now();

				sp_track_availability av = sp_track_get_availability( g_session, t );

				if( av != SP_TRACK_AVAILABILITY_AVAILABLE )
				{
					const char* name = sp_track_name(t);
					if( 0 == name )
						name = "<unknown>";

					LOG( "Track '" << AudioWriter::tolocalestring(name) << "' cannot be played, error " << av );
					t = 0;
					++trackIdx;
					++numTracksProcessed;
					continue;
				}

				getTrackData( g_currentTrackData, track );

				if( !g_options.overwriteExistingTracks )
				{
					const std::string fn = AudioWriter::getFilename( g_options, g_currentTrackData, "mp3" );
					FILE* hFile = AudioWriter::myfopen( fn, "rb", g_options.musicDir );
					if( hFile != NULL )
					{
//						LOG( "File " << fn << " already exists, skipping download" );
						fclose( hFile );
						track.writtenFilename = fn;
						t = 0;
						++trackIdx;
						++numTracksProcessed;
						continue;
					}
				}

				LOG	( "Starting download " << (numTracksProcessed+1) << '/' << numTracksTotal << ", '"
					<< AudioWriter::tolocalestring(g_currentTrackData.title) << "' from '" << AudioWriter::tolocalestring(g_currentTrackData.artist) << "'"
					);

				m_writer = new MP3Writer(g_currentTrackData, g_options);

				if (!g_options.bitrate == -1)
				{
					LOG ( "Output bitrate:" << g_options.bitrate << " kbps");
				}

				if( !m_writer->isFileOpened() )
				{
					delete m_writer;
					m_writer = 0;
					const std::string fn = AudioWriter::getFilename( g_options, g_currentTrackData, "mp3" );
					track.writtenFilename = fn;
					t = 0;
					++trackIdx;
					++numTracksProcessed;
					continue;
				}

				g_trackEnded = false;
				state = eWaitForTrackEnd;
				g_numSamplesCurrentTrack = 0;

				CHECK_SP_ERR( sp_session_player_load( g_session, t ) );
				CHECK_SP_ERR( sp_session_player_play( g_session, true ) );
#ifdef _WIN32
				SetThreadExecutionState( ES_SYSTEM_REQUIRED | ES_CONTINUOUS );
#endif
			}
			break;
		case eWaitForTrackEnd:

			if( g_trackEnded )
			{
				g_trackEnded = false;
				state = eFinalizeTrack;
				sp_session_player_play(g_session,false);
				break;
			}
			break;
		case eFinalizeTrack:

			{
				const int trackDuration = sp_track_duration(t);
				const ptypes::datetime realDuration = ptypes::now() - g_downloadStartTime;

				const ptypes::datetime speedPercent = trackDuration * 100 / realDuration;

				double volPercent = 100.0 * g_trackMaxVolume / INT16_MAX;

				LOG( "Download completed, speed was " << speedPercent << "%, maxx. vol: " << volPercent << "% finalizing..." );

				track.writtenFilename = m_writer->getFilename();
				m_writer->stopWorker();
				delete m_writer;
				m_writer = 0;
				g_trackMaxVolume = 0;

				t = 0;
				track.release();
				state = eWaitForTrackLoad;

#ifdef _WIN32
				SetThreadExecutionState( ES_CONTINUOUS );
#endif
				++trackIdx;
				++numTracksProcessed;
			}
			break;
		}

		sp_session_process_events(g_session,&nextTimeout);
		ptypes::psleep(std::min(250,nextTimeout));
	}

	createM3U(_trackQueue);

	LOG( "Download finished" );

	return 0;
}

int createTrackListFromAlbum( TTrackList& _dst, sp_album* a )
{
	sp_albumbrowse* ab = sp_albumbrowse_create( g_session, a, onSpotifyAlbumBrowseLoaded, NULL );

	if( NULL == ab )
	{
		ERROR_EXIT( "Failed to create album browse from album" );
	}

	WAIT_FOR_LOAD( sp_albumbrowse_is_loaded(ab) );

	int cnt = sp_albumbrowse_num_tracks(ab);

	for( int i=0; i<cnt; ++i )
	{
		sp_track* t = sp_albumbrowse_track( ab, i );

		if( !t )
		{
			sp_albumbrowse_release(ab);
			ERROR_EXIT("Unable to retrieve track " << i << " from albumbrowse" );
		}

		STrack track(t);
		track.album = sp_album_name(a);
		_dst.push_back(track);
	}

	sp_albumbrowse_release(ab);

	return 0;
}
int createTrackListFromPlayList( TTrackList& _dst, sp_playlist* p )
{		
	WAIT_FOR_LOAD( sp_playlist_is_loaded(p) );

	std::string playlistName = sp_playlist_name( p );

	if( playlistName.empty() )
		playlistName = "Starred";

	// offline mode may improve ripping speed?
//	sp_error offlineErr = sp_playlist_set_offline_mode( g_session, p, true );
//	if( offlineErr != SP_ERROR_OK )
//		LOG( "Couldn't set playlist to offline mode, error: " << sp_error_message(offlineErr) );

	const int cnt = sp_playlist_num_tracks( p );

	// load all tracks
	for( int i=0; i<cnt; ++i )
	{
		sp_track* t = sp_playlist_track( p, i );

		if( !t )
			ERROR_EXIT( "Failed to retrieve track " << i << " from playlist " << playlistName )

		WAIT_FOR_LOAD( sp_track_is_loaded(t) );
	}

	// check if playlist is actually an album and download the album instead
	sp_album* a = 0;

	for( int i=0; i<cnt; ++i )
	{
		sp_track* t = sp_playlist_track( p, i );

		if( !t )
			ERROR_EXIT( "Failed to retrieve track " << i << " from playlist " << playlistName )

		sp_album* trackAlbum = sp_track_album(t);
		if( i == 0 )
		{
			a = trackAlbum;
		}
		else
		{
			if( trackAlbum != a )
			{
				a = 0;	// different albums, not an album
				break;
			}
		}
	}

	TTrackList temp;
	if( a != 0 && 0 == createTrackListFromAlbum(temp,a) && temp.size() == cnt )
	{
		// count does match, playlist is the album
		_dst.insert( _dst.end(), temp.begin(), temp.end() );
	}
	else
	{
		for( int i=0; i<cnt; ++i )
		{
			sp_track* t = sp_playlist_track( p, i );

			if( !t )
				ERROR_EXIT( "Failed to retrieve track " << i << " from playlist " << playlistName )

			STrack track(t);
			track.playlist = playlistName;
			_dst.push_back( track );
		}
	}
	return 0;
}

int createTrackListFromLink( TTrackListList& _dst, sp_link* l )
{
	sp_playlist* p = 0;

	sp_linktype linkType = sp_link_type(l);
	switch( linkType )
	{
	case SP_LINKTYPE_INVALID:
		LOGD( "Invalid link type" );	
		return -1;
	case SP_LINKTYPE_TRACK:
		{
			sp_track* t = sp_link_as_track(l);
			if( !t )
				ERROR_EXIT("Failed to retrieve track from link");

			STrack track(t);

			TTrackList l;
			l.push_back( track );
			_dst.push_back(l);
		}
		break;
	case SP_LINKTYPE_ALBUM:
		{
			sp_album* a = sp_link_as_album(l);

			if( NULL == a )
				ERROR_EXIT("Failed to retrieve album from link" );

			AlbumRef albumRef(a);

			TTrackList l;
			const int result = createTrackListFromAlbum(l,a);
			if( result )
				return result;
			_dst.push_back( l );
		}
		break;
	case SP_LINKTYPE_STARRED:
		p = sp_session_starred_create( g_session );
	case SP_LINKTYPE_PLAYLIST:
		{
			if( !p )
				p = sp_playlist_create( g_session, l );
			if( !p )
				ERROR_EXIT( "Failed to create playlist from link" );

			TTrackList l;
			int result = createTrackListFromPlayList(l,p);

			sp_playlist_release(p);

			if( result )
				return result;
			_dst.push_back(l);
		}
		break;
	default:
		ERROR_EXIT( "Link type " << linkType << " is not supported yet" );
		break;
	}
	return 0;
}

int createTrackListFromStarred( TTrackListList& _dst )
{
	TTrackList l;

	sp_playlist* p = sp_session_starred_create( g_session );

	if( !p )
		ERROR_EXIT( "Failed to create starred playlist" );

	createTrackListFromPlayList( l, p );

	sp_playlist_release( p );
	p = 0;

	_dst.push_back(l);

	return 0;
}

int createTrackListFromLink( TTrackListList& _dst, const std::string& _link )
{
	LOG( "Parsing link '" << _link << "'" );

	if( _link == "all" )
	{
		// all playlists
		sp_playlistcontainer* pc = sp_session_playlistcontainer(g_session);

		if( !pc )
			ERROR_EXIT( "Failed to retrieve playlist root container" );

		WAIT_FOR_LOAD( sp_playlistcontainer_is_loaded(pc) );

		const int numPlaylists = sp_playlistcontainer_num_playlists(pc);

		LOG( "Found " << numPlaylists << " playlists" );

		for( int i=0; i<numPlaylists; ++i )
		{
			sp_playlist* p = sp_playlistcontainer_playlist( pc, i );

			if( !p )
			{
				LOG( "Unable to retrieve playlist with index " << i );
				continue;
			}

			TTrackList l;
			const int res = createTrackListFromPlayList(l, p);

			if( res )
				return res;

			_dst.push_back(l);
		}

		// and the starred tracks, too
		return createTrackListFromStarred( _dst );
	}
	else if( _link == "starred" )
	{
		return createTrackListFromStarred( _dst );
	}
	else
	{
		sp_link* l = sp_link_create_from_string( _link.c_str() );

		if( NULL == l )
		{
			LOGD( "Failed to create spotify link from string " << _link );
			return -1;
		}

		LinkRef linkRef(l,false);

		return createTrackListFromLink( _dst, l );
	}
}

#ifdef _WIN32
int __cdecl main(int argc, char* argv[])
#else
int main(int argc, char* argv[])
#endif
{
	setlocale(LC_ALL, "");

	LOG( "Parsing options" );

	const std::string res = g_options.parse( argc, argv );

	if( !res.empty() )
	{
		LOG( Options::printUsage() );
		ERROR_EXIT( res );
	}

	LOG( "Initializing libspotify... " );

	memset( &g_spotify_session_config, 0, sizeof(g_spotify_session_config) );
	memset( &g_session_callbacks, 0, sizeof(g_session_callbacks) );
	memset( &g_playlist_callbacks, 0, sizeof(g_playlist_callbacks) );
	memset( &g_playlistcontainer_callbacks, 0, sizeof(g_playlistcontainer_callbacks) );

	g_session_callbacks.logged_in = &onSpotifyLoggedIn;
	g_session_callbacks.logged_out = &onSpotifyLoggedOut;
	g_session_callbacks.metadata_updated = &onSpotifyMetadataUpdated;
	g_session_callbacks.connection_error = &onSpotifyConnectionError;
	g_session_callbacks.message_to_user = &onSpotifyMessageToUser;
	g_session_callbacks.notify_main_thread = &onSpotifyNotifyMainThread;
	g_session_callbacks.music_delivery = &onSpotifyMusicDelivery;
	g_session_callbacks.play_token_lost = &onSpotifyPlayTokenLost;
	g_session_callbacks.log_message = &onSpotifyLogMessage;
	g_session_callbacks.end_of_track = &onSpotifyEndOfTrack;
	g_session_callbacks.streaming_error = &onSpotifyStreamingError;
	g_session_callbacks.userinfo_updated = &onSpotifyUserInfoUpdated;
	g_session_callbacks.start_playback = &onSpotifyStartPlayback;
	g_session_callbacks.stop_playback = &onSpotifyStopPlayback;
	g_session_callbacks.get_audio_buffer_stats = NULL; // &onSpotifyGetAudioBufferStats;
	g_session_callbacks.offline_status_updated = &onSpotifyOfflineStatusUpdated;
	g_session_callbacks.offline_error = &onSpotifyOfflineError;
	g_session_callbacks.credentials_blob_updated = &onSpotifyCredentialsBlobUpdated;
	g_session_callbacks.connectionstate_updated = &onSpotifyConnectionStateUpdated;
	g_session_callbacks.scrobble_error = &onSpotifyScrobbleError;
	g_session_callbacks.private_session_mode_changed = &onSpotifyPrivateSessionModeChanged;

	g_playlistcontainer_callbacks.playlist_added = &onSpotifyPlaylistContainerPlaylistAdded;
	g_playlistcontainer_callbacks.playlist_removed = &onSpotifyPlaylistContainerPlaylistRemoved;
	g_playlistcontainer_callbacks.playlist_moved = &onSpotifyPlaylistContainerPlaylistMoved;
	g_playlistcontainer_callbacks.container_loaded = &onSpotifyPlaylistContainerLoaded;

	g_playlist_callbacks.tracks_added = &onSpotifyPlaylistTracksAdded;
	g_playlist_callbacks.tracks_removed = &onSpotifyPlaylistTracksRemoved;
	g_playlist_callbacks.tracks_moved = &onSpotifyPlaylistTracksMoved;
	g_playlist_callbacks.playlist_renamed = &onSpotifyPlaylistRenamed;
	g_playlist_callbacks.playlist_state_changed = &onSpotifyPlaylistStateChanged;
	g_playlist_callbacks.playlist_update_in_progress = &onSpotifyPlaylistUpdateInProgress;
	g_playlist_callbacks.playlist_metadata_updated = &onSpotifyPlaylistMetadataUpdated;
	g_playlist_callbacks.track_created_changed = &onSpotifyPlaylistTrackCreatedChanged;
	g_playlist_callbacks.track_seen_changed = &onSpotifyPlaylistTrackSeenChanged;
	g_playlist_callbacks.description_changed = &onSpotifyPlaylistDescriptionChanged;
	g_playlist_callbacks.image_changed = &onSpotifyPlaylistImageChanged;
	g_playlist_callbacks.track_message_changed = &onSpotifyPlaylistTrackMessageChanged;
	g_playlist_callbacks.subscribers_changed = &onSpotifyPlaylistSubscribersChanged;

	FILE* hFile = AudioWriter::myfopen( g_options.appkeyFilename, "rb" );
	if( !hFile )
		ERROR_EXIT( "Unable to load application key, errno " << errno );

	fseek( hFile, 0, SEEK_END );
	size_t appkeySize = ftell( hFile );
	fseek( hFile, 0, SEEK_SET );
	g_appkey.resize( appkeySize );
	fread( &g_appkey[0], appkeySize, 1, hFile );
	fclose(hFile);

	g_cacheLocation = g_options.cacheDir + "/cache";
	g_settingsLocation = g_options.cacheDir + "/settings";
	g_traceFile = g_options.cacheDir + "spotiload_apitrace.log";

	createDirectory( g_options.cacheDir );
	createDirectory( g_options.cacheDir + SEPARATOR + "cache" );
	createDirectory( g_options.cacheDir + SEPARATOR + "settings" );

	g_spotify_session_config.api_version = SPOTIFY_API_VERSION;
	g_spotify_session_config.application_key = &g_appkey[0];
	g_spotify_session_config.application_key_size = appkeySize;
	g_spotify_session_config.cache_location = g_cacheLocation.c_str();
	g_spotify_session_config.settings_location = g_settingsLocation.c_str();
	g_spotify_session_config.user_agent = "carspotify";
	g_spotify_session_config.tracefile = g_traceFile.c_str();
	g_spotify_session_config.callbacks = &g_session_callbacks;

	g_session = 0;

	CHECK_SP_ERR( sp_session_create( &g_spotify_session_config, &g_session ) );

	CHECK_SP_ERR( sp_session_set_volume_normalization( g_session, g_options.volumeNormalization ) );

	CHECK_SP_ERR( sp_session_preferred_bitrate( g_session, SP_BITRATE_320k ) );

	CHECK_SP_ERR( sp_session_login( g_session, g_options.spotifyUsername.c_str(), g_options.spotifyPassword.c_str(), false, NULL ) );

	WAIT_FOR_LOAD( m_loggedIn );

	if (g_options.volumeNormalization) LOG("Using volume normalization");

	LOG( "Parsing spotify links" );

	int ret = 0;

	if( g_options.downloadLinks.empty() )
	{
		LOG( "Running in interactive mode, enter spotify links to be downloaded:" )

		while( true )
		{
			char buf[256];
			fgets( buf, sizeof(buf)-1, stdin );

			std::string input = buf;
			while( !input.empty() && (input[input.size()-1] == '\r' || input[input.size()-1] == '\n') )
				input = input.substr( 0, input.size()-1 );

			std::cout << '"' << input << '"' << std::endl;

			if( input == "quit" || input == "" || input == "exit" )
			{
				LOG( "Quit signal received, terminating...." );
				break;
			}

			if( input.substr( 0, 7 ) == "spotify" )
			{
				TTrackListList trackQueue;

				int err = createTrackListFromLink( trackQueue, input );
				if( err )
					LOG( "Failed to parse link " << input )
				else
				{
					for( size_t i=0; i<trackQueue.size(); ++i )
					{
						const int r = downloadTracks(trackQueue[i]);
						if( !ret && r )
							ret = r;
					}
				}
			}
			else
			{
				LOG( "Invalid input '" << input << "'" );
			}
		}
	}
	else
	{
		for( std::vector<std::string>::const_iterator it = g_options.downloadLinks.begin(); it != g_options.downloadLinks.end(); ++it )
		{
			TTrackListList trackQueue;

			const std::string& strLink = *it;

			const int err = createTrackListFromLink( trackQueue, strLink );

			if( err )
				LOG( "Failed to parse link " << strLink );
			
			for( size_t i=0; i<trackQueue.size(); ++i )
			{
				int r = downloadTracks(trackQueue[i]);

				if( r && !ret )
					ret = r;
			}
		}
	}
	LOG( "Logging out of Spotify" );
	sp_session_logout(g_session);
	WAIT_FOR_LOAD( m_loggedIn == false );
	LOG( "Logout done, program finished, return code " << ret );
	return ret;
}

