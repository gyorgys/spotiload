cd src

# LAME
cd external/lame
chmod +x configure
./configure
make
sudo make install
cd ../..

# PTYPES
cd external/ptypes
make
sudo make install
cd ../..

# LIBSPOTIFY
cd external/libspotify
tar -xf libspotify-12.1.51-Linux-x86_64-release.tar.gz
cd libspotify-12.1.51-Linux-x86_64-release/
sudo make install
cd ../../..

# MAIN
cd spotiload
make

# binary is now in <root of spotiload mercurial depot>/bin/spotiload
cd ../../bin

./spotiload -u foo -p bar -key myappkey.key -cachedir cache -link spotify:track:55qBw1900pZKfXJ6Q9A2Lc
