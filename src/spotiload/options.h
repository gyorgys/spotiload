#pragma once

#include <string>
#include <list>
#include <vector>

class Options
{
public:
	enum EOptions
	{
		eUseCache,
		eSpotifyUsername,
		eSpotifyPassword,
		eOverwriteExistingTracks,
		eDownloadLink,
		eAppKey,
		eCacheDir,
		eVolumeNormalization,
		eMusicDir,
		eBitrate,
		eCOUNT
	};

	bool						useCache;

	std::string					spotifyUsername;
	std::string					spotifyPassword;

	bool						overwriteExistingTracks;

	std::vector<std::string>	downloadLinks;

	std::string					appkeyFilename;
	std::string					cacheDir;
	std::string					musicDir;

	bool						volumeNormalization;

	long					    bitrate;

	Options();

	std::string parse( std::vector< std::string >& _args );
	std::string parse(int argc, char* argv[]);

	static const std::string& printUsage();
};
