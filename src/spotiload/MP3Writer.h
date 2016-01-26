#pragma once

#include "audioWriter.h"

class MP3Writer : public AudioWriter
{
	lame_global_flags* gfp;
	std::vector<unsigned char> m_mp3Buf;

public:
	MP3Writer( const STrackData& _trackData, const Options& _options );

	virtual ~MP3Writer();

	virtual unsigned int append( short* _data, size_t _count );

	virtual const std::string& getExtension() const
	{
		static std::string ext = "mp3";

		return ext;
	}
};
