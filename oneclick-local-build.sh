#!/bin/bash

###################################################################
#Script Name	:Lineage OS 18.1 Satsuki builder                                                                        
#Description	:Build your own lineage OS 18.1 for Z5P                                                                               
#Args           :                                                                                           
#Author       	:Fatih Gucuko                                           
#Email         	:fatih.gucuko@webinify.com                                    
###################################################################
echo "INSTALLING NECESSARY PACKAGES FOR BUILD"
apt-get install -y aptitude
apt-get install -y adb fastboot
aptitude install -y bc bison build-essential ccache curl \ 
    flex g++-multilib gcc-multilib git gnupg gperf imagemagick \
    lib32ncurses5-dev lib32readline-dev lib32z1-dev liblz4-tool \
    libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 \
    libxml2-utils lzop pngcrush rsync schedtool squashfs-tools xsltproc zip zlib1g-dev \
    default-jre
echo "===== CREATING BIN DIR ====="
mkdir ~/bin
echo "===== Instaling the repo command ====="
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
echo "===== CREATING PROJECT DIR ====="
mkdir lineage/
echo "### BASIC CONFIGURATION DONE ###"
echo "Setting up PATH"
export PATH=~/bin:$PATH
echo "===== GOING TO PROJECT DIR ====="
cd lineage/
echo "===== INIT ***lineage-18.1*** REPO OF LINEAGE OS ====="
repo init -u https://github.com/LineageOS/android.git -b lineage-18.1
mkdir -p .repo/local_manifests/
cp ../src/lineage-18.1-manifests.xml lineage/local_manifests/manifests.xml
echo "READY TO BUILD Lineage OS 18.1 for your Z5 Premium (satsuki) !"
echo "Now run:"
echo "> repo sync -c    #Is going to take some time to download everything..."
echo "> source build/envsetup.sh"
echo "> croot && brunch"
echo "ENJOY !"