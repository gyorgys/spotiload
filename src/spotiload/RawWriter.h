#pragma once

#include "audioWriter.h"

class RawWriter : public AudioWriter
{
private:
	FILE* m_hFile;
public:
	RawWriter( const STrackData& _trackData, const Options& _options ) : AudioWriter(_trackData, _options)
	{
		createFile();
	}

	virtual ~RawWriter()
	{
		closeFile();
	}

	virtual const std::string& getExtension() const
	{
		static std::string ext = "raw";
		return ext;
	}

	unsigned int append( short* _data, size_t _count )
	{
		if( !m_hFile )
			return 0;
		return fwrite( _data, sizeof(short), _count, m_hFile );
	}
};
