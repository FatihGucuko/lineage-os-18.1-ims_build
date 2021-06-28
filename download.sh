#!/bin/bash
echo "===== GOING TO PROJECT DIR ====="
cd lineage/
echo "===== INIT ***lineage-18.1*** REPO OF LINEAGE OS ====="
repo init -u https://github.com/LineageOS/android.git -b lineage-18.1
echo "===== Downloading SONY PROPRIETARY VENDOR FILES # Can take some time..."
git clone https://github.com/Sony-MSM8994-Dev/proprietary_vendor_sony -b lineage-18.1-ims vendor/sony/
git clone https://github.com/Sony-MSM8994-Dev/android_device_sony_kitakami-common.git -b lineage-18.1-ims device/sony/kitakami-common/
git clone https://github.com/Sony-MSM8994-Dev/android_device_sony_satsuki.git -b lineage-18.1-ims device/sony/satsuki/
echo "===== REPO SYNC ====="
repo sync -c
echo "===== REPO SYNC FINISHED ====="
source build/envsetup.sh
echo "DONE ! now run: Breakfast then choose the build target"
echo "Then run: croot && brunch"
echo "If the build fails with missing dependencies write in your terminal:"
echo " "
echo "RUN: export ALLOW_MISSING_DEPENDENCIES=true"
echo " "
echo "ENJOY !"
