# install required packages
sudo apt-get install mercurial g++ automake make

# get repo
hg clone https://bitbucket.org/OlgahWolgah/spotiload
hg update default

# allow exec
chmod +x build.sh

# build
#./build.sh
