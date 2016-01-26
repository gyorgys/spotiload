#pragma once

#include "TrackData.h"

class Options;

class AudioWriter
{
private:
	class AudioData : public ptypes::message
	{
	public:
		std::vector<short> m_data;

		AudioData( std::vector<short>& _data ) : ptypes::message(0)
		{
			m_data.swap(_data);
		}
	};

	class Worker : public ptypes::thread
	{
		ptypes::jobqueue& m_queue;
		AudioWriter& m_writer;
	public:
		Worker( ptypes::jobqueue& _queue, AudioWriter& _writer ) : ptypes::thread(false), m_queue(_queue), m_writer(_writer)
		{
		}

		void execute()
		{
			while( true )
			{
				ptypes::message* msg = m_queue.getmessage();
				if( msg->id == 0 )
				{
					AudioData* data = (AudioData*)msg;
					m_writer.append( &data->m_data[0], data->m_data.size() );
					delete msg;
				}
				else
				{
					delete msg;
					break;
				}
			}
		}
	};
protected:
	const STrackData&	m_trackData;
	const Options&		m_options;
	FILE*				m_hFile;
	std::string			m_error;

	ptypes::jobqueue	m_queue;

	Worker				m_worker;
public:
	AudioWriter( const STrackData& _trackData, const Options& _options );
	virtual ~AudioWriter();

	std::string getFilename() const;
	static std::string getFilename( const Options& _options, const STrackData& _trackData, const std::string& _ext );
	
	virtual unsigned int append( short* _data, size_t _count ) = 0;

	virtual unsigned int appendData( short* _data, size_t _count );

	virtual const std::string& getExtension() const = 0;

	void writeImages();

	static std::string escapeFilename( const std::string& _src );
	static std::string tolocalestring( const std::string& _src );

	static FILE* myfopen( const std::string& _filename, const char* _mode );

	bool createFile();
	void closeFile();

	static std::wstring getUnicodeFilename( const std::string& _filename );

	bool isFileOpened() const			{ return m_hFile != 0; }

	static std::string toString(int i)
	{
		std::stringstream ss; ss << i; return ss.str();
	}

	void setError( const std::string& _err )
	{
		LOG( "ERROR: " << _err );

		if( m_error.empty() )
		{
			m_error = _err;
		}
	}

	void stopWorker()
	{
		m_queue.posturgent(1);
		m_worker.waitfor();
	}
};
