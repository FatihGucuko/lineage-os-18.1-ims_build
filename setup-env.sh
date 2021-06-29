#!/bin/bash
echo "Seting up PATH"
export PATH=~/bin:$PATH
echo "===== Turning on caching to speed up the build process ====="
export USE_CCACHE=1
export CCACHE_EXEC=/usr/bin/ccache
ccache -M 50G
echo "===== Enabling cache compression ====="
ccache -o compression=true
echo "DONE ! Continue by running: bash download.sh"