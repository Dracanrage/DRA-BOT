#!/bin/bash
ROM_TREE=$PWD
### Start ja3gxx
cd $ROM_TREE/frameworks/base
git am ~/Mokee/device/samsung/exynos5410-common/patches/frameworks_base/0001-DO-NOT-MERGE-PATCH-Zygote-Stop-breaking-the-entire-s.patch
git am ~/Mokee/device/samsung/exynos5410-common/patches/frameworks_base/0002-improve-compatibility-when-compiling-with-clang.patch
export WITH_SU=true
export WITH_TWRP=true
export USE_CCACHE=1
export USE_PREBUILT_CHROMIUM=1
cd ~/Mokee
pwd
source build/envsetup.sh
lunch mk_ja3gxx-userdebug
brunch mk_ja3gxx-userdebug
find ~/Mokee/out/target/product/ja3gxx -name MK*.zip -exec cp {} ~/Mokee/FULL/UNOFFICIAL/ja3gxx/ \;
make clean
### Start ja3gchnduos
export WITH_SU=true
export WITH_TWRP=true
export USE_CCACHE=1
export USE_PREBUILT_CHROMIUM=1
cd $ROM_TREE/
pwd
source build/envsetup.sh
lunch mk_ja3gchnduos-userdebug
brunch mk_ja3gchnduos-userdebug
find ~/Mokee/out/target/product/ja3gchnduos -name MK*.zip -exec cp {} ~/Mokee/FULL/UNOFFICIAL/ja3gchnduos/ \;
make clean
### Start jaltelgt
export WITH_SU=true
export WITH_TWRP=true
export USE_CCACHE=1
export USE_PREBUILT_CHROMIUM=1
cd $ROM_TREE/
pwd
source build/envsetup.sh
lunch mk_jaltelgt-userdebug
brunch mk_jaltelgt-userdebug
find ~/Mokee/out/target/product/jaltelgt -name MK*.zip -exec cp {} ~/Mokee/FULL/UNOFFICIAL/jaltelgt/ \;
make clean
### Start jalteskt
export WITH_SU=true
export WITH_TWRP=true
export USE_CCACHE=1
export USE_PREBUILT_CHROMIUM=1
cd $ROM_TREE/
pwd
source build/envsetup.sh
lunch mk_jalteskt-userdebug
brunch mk_jalteskt-userdebug
find ~/Mokee/out/target/product/jalteskt -name MK*.zip -print -exec cp {} ~/Mokee/FULL/UNOFFICIAL/jalteskt/ \;
export MK_OTA_INPUT=/media/duke/85212d72-61fe-2046-b4ca-8a449c52f0c8/FULL/
export MK_OTA_EXTRA=/media/duke/85212d72-61fe-2046-b4ca-8a449c52f0c8/OTA/
ota_all UNOFFICIAL
make clean
