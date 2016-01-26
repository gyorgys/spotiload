#include "stdafx.h"

#include "options.h"

struct OptionDesc
{
	std::string			command;
	unsigned int		numArgsRequired;

	OptionDesc( const char* const _cmd, unsigned int _numArgsRequired) : command(_cmd), numArgsRequired(_numArgsRequired)
	{
	}
};

static bool toBool( const std::string& _str, bool _default = false )
{
	if( _str.empty() )
		return _default;

	std::string str;

	std::transform( _str.begin(), _str.end(), str.begin(), tolower );

	return str == "true" || str == "1" || str == "yes";
}

static const OptionDesc g_optionDescs[Options::eCOUNT] = 
{
	/* eUseCache */					OptionDesc( "c", 0 ),
	/* eSpotifyUsername, */			OptionDesc( "u", 1 ),
	/* eSpotifyPassword, */			OptionDesc( "p", 1 ),
	/* eOverwriteExistingTracks, */	OptionDesc( "f", 0 ),
	/* eDownloadLinks, */			OptionDesc( "link", 1 ),
	/* eAppKey,			*/			OptionDesc( "key", 1 ),
	/* eCacheDir,	*/				OptionDesc( "cachedir", 1 )
};

// _____________________________________________________________________________
// Options
//
Options::Options() : useCache(false)
	, spotifyUsername(std::string())
	, spotifyPassword(std::string())
	, overwriteExistingTracks(false)
	, downloadLinks(std::vector<std::string>())
{
}

// _____________________________________________________________________________
// parse
//
std::string Options::parse( std::vector<std::string>& _args )
{
	std::stringstream err;

	std::vector< std::vector<std::string> > optionArgs;

	optionArgs.resize( eCOUNT );

	for( size_t a=0; a<_args.size(); ++a )
	{
		std::string& arg = _args[a];
		std::transform( arg.begin(), arg.end(), arg.begin(), ::tolower );

		if( arg[0] == '-' || arg[0] == '/' )
		{
			// command
			const std::string cmd( arg.substr( 1 ) );

			for( size_t o=0; o<Options::eCOUNT; ++o )
			{
				if( cmd == g_optionDescs[o].command )
				{
					// found it...

					if( !g_optionDescs[o].numArgsRequired )
						optionArgs[o].push_back( std::string() );	// one empty arg to indicate that option is set
					else
					{
						size_t i=a+1;
						size_t numArgsFound = 0;

						while( i < _args.size() && _args[i][0] != '-' && _args[i][0] != '/' )
						{
							optionArgs[o].push_back( _args[i] );
							++i;
							++numArgsFound;
						}

						if( numArgsFound < g_optionDescs[o].numArgsRequired )
						{
							err << "not enough arguments for option " << arg;
							return err.str();
						}

						a += (numArgsFound-1);
					}
				}
			}
		}
	}

	if( optionArgs[eSpotifyUsername].empty() )
		return "Please provide Spotify username";
	if( optionArgs[eSpotifyPassword].empty() )
		return "Please provide Spotify password";

	useCache				= !optionArgs[eUseCache].empty();

	spotifyUsername			= optionArgs[eSpotifyUsername].front();
	spotifyPassword			= optionArgs[eSpotifyPassword].front();

	overwriteExistingTracks	= !optionArgs[eOverwriteExistingTracks].empty();

	downloadLinks.insert( downloadLinks.begin(), optionArgs[eDownloadLink].begin(), optionArgs[eDownloadLink].end() );

	appkeyFilename			= optionArgs[eAppKey].empty() ? std::string() : optionArgs[eAppKey].front();

	if( appkeyFilename.empty() )
		return "Please provide the file name of your Spotify application key";

	cacheDir				= optionArgs[eCacheDir].empty() ? std::string("spotiload") : optionArgs[eCacheDir].front();

	return std::string();
}

std::string Options::parse( int argc, char* argv[] )
{
	std::vector<std::string> args;

	for( int i=1; i<argc; ++i )
		args.push_back( argv[i] );

	return parse(args);
}

// _____________________________________________________________________________
// printUsage
//
const std::string& Options::printUsage()
{
	static const char usage[] = 	
		"Program usage:\n"
		"-u username          Your Spotify user name\n"
		"-p password          Your Spotify password\n"
		"-key keyfile         Your Spotify developer application key in binary format\n"
		"[-link spotify:....] Download the specified spotify URL, can be any spotify\n"
		"                     URI like playlist, track album etc\n"
		"                     If the link is 'starred', the favourites are downloaded\n"
		"                     If the link is 'all', the whole content of the account is downloaded\n"
		"                     If no link is supplied, links can be entered from the command line\n"
		"[-cachedir dir]      Directory for cache.\n"
	;

	static std::string ret(usage);
	return ret;
}