#!/bin/bash
echo "===== Installing the required linux packages ====="
sudo apt-get install aptitude
sudo apt-get install aptitude bc bison build-essential ccache curl flex g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
echo "===== CREATING BIN DIR ====="
mkdir ~/bin
echo "===== CREATING PROJECT DIR ====="
mkdir lineage/
echo "===== Instaling the repo command ====="
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo "### BASIC CONFIGURATION DONE ###"
echo "==> Now run: bash setup-env.sh"

