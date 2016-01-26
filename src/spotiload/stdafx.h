#pragma once

#ifdef _WIN32
#	include "targetver.h"
#	include <tchar.h>
#	define WIN32_LEAN_AND_MEAN
#	define NOMINMAX
#	define NOSERVICE
#	include <windows.h>
#endif

#include <stdint.h>

#include <list>
#include <map>
#include <vector>
#include <set>
#include <algorithm>

#include <iostream>
#include <sstream>

#include <errno.h>
#include <stdio.h>

#ifdef _WIN32
#include <direct.h>	// mkdir
#define SEPARATOR	'\\'
#else
#define SEPARATOR	'/'
#include <sys/stat.h>
static void OutputDebugStringA( const char* _msg )
{
}
static int _mkdir( const char* _dir )
{
	return ::mkdir( _dir, S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH );
}
#define _getcwd getcwd
#endif

#include <cassert>

#define LOG(S)	{ std::stringstream ss; ss << S; std::cout << ss.str() << std::endl; ::OutputDebugStringA( (ss.str()+"\n").c_str() ); }

#define LOGD(S)	{ LOG( __FUNCTION__ << "@" << __LINE__ << ": " << S ); }

#include "../external/libspotify/include/libspotify/api.h"

#define CHECK_SP_ERR(RES)																		\
{																								\
	sp_error ______err = RES;																	\
	\
	if( ______err != SP_ERROR_OK )																\
	{																							\
		LOGD( "Spotify error " << sp_error_message(______err) << " while calling " << #RES );	\
		return -1;																				\
	}																							\
}

#define WAIT_FOR_LOAD(FUNC)								\
{														\
	int waitTime = 100;									\
	while( !(FUNC) )									\
	{													\
		ptypes::psleep( std::min(waitTime,100) );		\
		sp_session_process_events(g_session,&waitTime);	\
	}													\
}

static bool createDirectory( const std::string& _name )
{
	if( !::_mkdir( _name.c_str() ) )
		return true;

	const int e = errno;

	if( e == EEXIST )
		return true;	// ignore

	LOG( "Failed to create directory '" << _name << "', errno = " << e );
	return false;
}

#include "../external/lame/include/lame.h"

#include "../external/ptypes/include/pasync.h"
#include "../external/ptypes/include/ptime.h"
