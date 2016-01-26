#pragma once

class Image;

struct STrack
{
private:
	sp_track*	t;
public:
	std::string	playlist;
	std::string	album;

	mutable std::string	writtenFilename;

	STrack( sp_track* _t ) : t(_t)
	{
		sp_track_add_ref(t);
	}

	STrack( const STrack& _t ) : t(_t.t), playlist(_t.playlist), album(_t.album), writtenFilename(_t.writtenFilename)
	{
		sp_track_add_ref(t);
	}

	virtual ~STrack()
	{
		release();
	}

	void release()
	{
		if( t )
		{
			sp_track_release(t);
			t = 0;
		}
	}
	bool findPlayable( sp_session* s )
	{
		sp_track* newTrack = sp_track_get_playable(s, t);

		if( !newTrack )
			return false;

		setTrack( newTrack );

		return true;
	}

	void setTrack( sp_track* _t )
	{
		if( t == _t )
			return;

		if( _t )
			sp_track_add_ref(_t);

		release();

		t = _t;
	}

	operator sp_track* () const
	{
		return t;
	}
};

struct STrackData
{
	std::string	playlist;

	std::string	title;
	std::string	artist;
	std::string album;
	std::string	albumArtist;
	uint32_t	albumYear;
	int			trackNum;
	size_t		durationMS;

	Image*		images[3];

	std::string	spotifyURI;
	std::string	copyright;
	std::string review;

	bool		srcIsPlaylist;
	bool		srcIsAlbum;

	STrackData() : albumYear(0), trackNum(0), durationMS(0), srcIsPlaylist(false), srcIsAlbum(false)
	{
		images[0] = images[1] = images[2] = 0;
	}
};
