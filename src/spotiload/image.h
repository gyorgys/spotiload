#pragma once

class Image
{
	sp_session* g_session;
	sp_image* m_img;

	typedef std::vector<unsigned char>		TData;
	TData m_data;

public:
	Image( sp_session* _session, const byte* _id )
	{
		g_session = _session;

		m_img = sp_image_create( _session, _id );

		if( !m_img )
			LOGD( "Failed to create image from image id" );
	}
	virtual ~Image()
	{
		if( m_img )
			sp_image_release(m_img);
	}

	const TData& getData()
	{
		if( m_img != 0 && m_data.empty() )
		{
			WAIT_FOR_LOAD( sp_image_is_loaded(m_img) );

			size_t dataSize = 0;
			const void* const d = sp_image_data( m_img, &dataSize );

			m_data.resize( dataSize );

			if( dataSize )
				memcpy( &m_data[0], d, dataSize );
		}

		return m_data;
	}
};
