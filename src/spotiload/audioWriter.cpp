#include "stdafx.h"

#include "audioWriter.h"
#include "image.h"
#include "options.h"
#include "utf8.h"

static const std::string g_fileWorkInProgressPostfix = "___wip___";

AudioWriter::AudioWriter( const STrackData& _trackData, const Options& _options ) : m_trackData(_trackData), m_options(_options), m_hFile(0), m_queue(64), m_worker(m_queue,*this)
{
	m_worker.start();
}

void AudioWriter::writeImages()
{
	int orders[3] = {2,0,1};

	for( size_t i=0; i<3; ++i )
	{
		Image* img = m_trackData.images[orders[i]];

		if( img )
		{
			std::stringstream ss; ss << escapeFilename(m_trackData.albumArtist) << SEPARATOR << escapeFilename(m_trackData.album) << SEPARATOR << "folder.jpg";

			const std::string filename = ss.str();

			FILE* hFile = myfopen( filename, "wb" );
			
			if( hFile )
			{
				fwrite( &img->getData()[0], img->getData().size(), 1, hFile );
				fclose( hFile );
			}
			else
				LOG( "ERROR: Failed to write image file '" << filename << "', errno " << errno );

			break;
		}
	}
}

AudioWriter::~AudioWriter()
{
	if( m_trackData.srcIsAlbum )
	{
		writeImages();
	}

	assert( m_hFile == 0 && "file not closed in derived class" );
}

std::string AudioWriter::getFilename() const
{
	return getFilename(m_options,m_trackData, getExtension());
}

std::string AudioWriter::getFilename( const Options& _options, const STrackData& _trackData, const std::string& _ext )
{
	std::string path;

	if( _trackData.srcIsPlaylist )
	{
		path += escapeFilename(_trackData.playlist);
		createDirectory( path );
		path += SEPARATOR;
	}
	else if( _trackData.srcIsAlbum )
	{
		path += escapeFilename(_trackData.albumArtist);
		createDirectory( path );
		path += SEPARATOR;

		path += escapeFilename(_trackData.album);
		createDirectory( path );
		path += SEPARATOR;
	}

	std::string res = path;

	if( _trackData.srcIsAlbum )
	{
		char num[64];
		sprintf( num, "%02u", _trackData.trackNum+1 );
		res += num + std::string(" - ");
	}

	// res += escapeFilename(_trackData.artist + " - " + _trackData.title);
	res += escapeFilename(_trackData.title);

	res += ".o." + _ext;

	return res;
}

std::string AudioWriter::escapeFilename( const std::string& _src )
{
	const std::string src = tolocalestring(_src);

	std::string ret;
	for( size_t i=0; i<src.size(); ++i )
	{
		switch( src.at(i) )
		{
		case '?':
		case ':':
		case '*':
		case '<':
		case '>':
		case '"':
			break;
		case '\\':
		case '/':
			ret += ',';
			break;
		default:
			ret += src.at(i);
		}
	}
	return ret;
}

std::string AudioWriter::tolocalestring( const std::string& _src )
{
#ifdef _WIN32
	std::string ret;
	char* result = 0;

	if( 0 != utf8_decode( _src.c_str(), &result ) || !result )
		ret = _src;
	else
		ret = result;

	if( result )
		free( result );

	return ret;
#else
	// TODO
	return _src;
#endif
}

bool AudioWriter::createFile()
{
	if( m_hFile )
		return false;

	const std::string name = getFilename()+g_fileWorkInProgressPostfix;
	m_hFile = myfopen( name, "w+b" );

	if( NULL == m_hFile )
		LOGD( "ERROR: Failed to create file '" << name << "', errno " << errno );

	return m_hFile != NULL;
}

void AudioWriter::closeFile()
{
	if( !m_hFile )
		return;

	fclose(m_hFile);
	m_hFile = 0;

#ifdef _WIN32
	const std::wstring src = getUnicodeFilename( getFilename()+g_fileWorkInProgressPostfix );
	const std::wstring dst = getUnicodeFilename( getFilename() );

	if( m_error.empty() )
	{
		::DeleteFileW( dst.c_str() );
		::MoveFileW( src.c_str(), dst.c_str() );
	}
	else
	{
		::DeleteFileW( src.c_str() );
	}
#else
	const std::string src = getFilename()+g_fileWorkInProgressPostfix;
	const std::string dst = getFilename();

	if( m_error.empty() )
	{
		system( (std::string("rm -f '") + dst + "'").c_str() );
		system( (std::string("mv '") + src + "' '" + dst + "'").c_str() );
	}
	else
	{
		system( (std::string("rm '") + src + "'").c_str() );
	}
#endif
}

unsigned int AudioWriter::appendData( short* _data, size_t _count )
{
	std::vector<short> data;
	data.resize( _count );
	memcpy( &data[0], _data, sizeof(short) * _count );

	m_queue.post( new AudioData(data) );

	return _count;
}

static wchar_t temp[32768];
static char tempDir[32768];

std::wstring AudioWriter::getUnicodeFilename( const std::string& _filename )
{
	_getcwd( tempDir, sizeof(tempDir) );

	const std::string from = std::string("\\\\?\\") + tempDir + '\\' + _filename;

	memset( temp, 0, sizeof(temp) );

#ifdef _WIN32
	::MultiByteToWideChar( CP_ACP, MB_PRECOMPOSED, from.c_str(), from.size(), temp, sizeof(temp) / sizeof(temp[0]) );
#else
	mbstowcs( temp, from.c_str(), sizeof(temp) / sizeof(temp[0]) );
#endif
	return std::wstring( temp );
}

FILE* AudioWriter::myfopen( const std::string& _filename, const char* _mode )
{
#ifdef _WIN32
	// prevent MAX_PATH limitation
	std::wstring name( getUnicodeFilename(_filename) );

	// mode needs to be unicode, too
	memset( temp, 0, sizeof(temp) );

	::MultiByteToWideChar( CP_ACP, MB_PRECOMPOSED, _mode, strlen(_mode), temp, sizeof(temp) / sizeof(temp[0]) );

	std::wstring mode( temp );

	FILE* hFile = _wfopen( name.c_str(), mode.c_str() );

	return hFile;
#else
	FILE* hFile = fopen( _filename.c_str(), _mode );

	return hFile;
#endif
}