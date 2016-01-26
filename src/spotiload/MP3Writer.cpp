#include "stdafx.h"

#include "MP3Writer.h"
#include "image.h"
#include "utf8.h"

MP3Writer::MP3Writer( const STrackData& _trackData, const Options& _options ) : AudioWriter(_trackData, _options)
{
	// be sure there is rooooooom. needs to be able to hold the whole id3 tag at first append call
	m_mp3Buf.resize( 512 * 1024 );

	gfp = lame_init();
	lame_set_num_channels(gfp,2);
	lame_set_in_samplerate(gfp,44100);
	lame_set_brate(gfp,320);
	lame_set_mode(gfp,STEREO);
	lame_set_quality(gfp,0);

	id3tag_init(gfp);
	id3tag_add_v2(gfp);

	id3tag_set_title(gfp, tolocalestring(_trackData.title).c_str());
	id3tag_set_artist(gfp, tolocalestring(_trackData.artist).c_str());
	id3tag_set_album(gfp, tolocalestring(_trackData.album).c_str());
	id3tag_set_year(gfp, toString(_trackData.albumYear).c_str());
	id3tag_set_comment(gfp, "SL");        
	id3tag_set_track(gfp, toString(_trackData.trackNum).c_str());
//	id3tag_set_comment(gfp, _trackData.spotifyURI.c_str());        

	if( !_trackData.albumArtist.empty() )
		id3tag_set_fieldvalue(gfp, ("TPE2=" + tolocalestring(_trackData.albumArtist)).c_str());
/*
	if( !_trackData.spotifyURI.empty() )
		id3tag_set_fieldvalue(gfp, ("TOFN=" + _trackData.spotifyURI).c_str());	// "Original filename"


	id3tag_set_fieldvalue(gfp, ("TRSN=Spotify") );								// "Internet Radio Station Name"

	if( !_trackData.copyright.empty() )
	{
		id3tag_set_fieldvalue(gfp, ("TCOP=" + tolocalestring(_trackData.copyright)).c_str() );	// "Copyright message"
		id3tag_set_fieldvalue(gfp, ("WCOP=" + tolocalestring(_trackData.copyright)).c_str() );	// "Copyright/Legal information"
	}

	if( !_trackData.review.empty() )
		id3tag_set_fieldvalue(gfp, ("WCOM=" + tolocalestring(_trackData.review)).c_str() );		// "Commercial information"
*/

/* return non-zero result if genre name or number is invalid
  result 0: OK
  result -1: genre number out of range
  result -2: no valid ID3v1 genre name, mapped to ID3v1 'Other'
             but taken as-is for ID3v2 genre tag */
//int CDECL id3tag_set_genre(lame_t gfp, const char* genre);

	int order[3] = {2,0,1};	// large medium small, write the largest possible image

	for( size_t i=0; i<3; ++i )
	{
		int idx = order[i];

		Image* img = _trackData.images[idx];
		
		if( img && img->getData().size() <= LAME_MAXALBUMART )
		{
			int result = id3tag_set_albumart(gfp, (const char*)&img->getData()[0], img->getData().size() );
			if( result != 0 )
				LOGD( "ERROR: Unable to embed album art" )
			else
				break;
		}
	}

	int retCode = lame_init_params(gfp);

	if( retCode < 0 )
		setError( "LAME init failed" );
	else
		createFile();
}

MP3Writer::~MP3Writer()
{
	int numBytesWritten = lame_encode_flush( gfp, &m_mp3Buf[0], m_mp3Buf.size() );

	if( numBytesWritten > 0 )
	{
		if( m_hFile )
			fwrite( &m_mp3Buf[0], numBytesWritten, 1, m_hFile );
	}
	else if( numBytesWritten < 0 )
	{
		setError( "Unable to flush file" );
	}

	lame_mp3_tags_fid( gfp, m_hFile );

	lame_close(gfp);
	gfp = 0;

	closeFile();
}

unsigned int MP3Writer::append( short* _data, size_t _count )
{
	int numBytesWritten = lame_encode_buffer_interleaved( gfp, _data, _count>>1, &m_mp3Buf[0], m_mp3Buf.size() );

	if( numBytesWritten > 0 )
	{
		if( m_hFile )
			fwrite( &m_mp3Buf[0], numBytesWritten, 1, m_hFile );
	}
	else if( numBytesWritten < 0 )
	{
		LOGD( "ERROR: Buffer too small" );
		return 0;
	}
	return _count;
}
