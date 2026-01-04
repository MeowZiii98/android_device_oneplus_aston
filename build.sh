#!/bin/bash

repo init -u https://github.com/Infinity-X/manifest.git -b qpr0 --git-lfs

rm -rf prebuilts/clang/host/linux-x86
/opt/crave/resync.sh

git clone https://github.com/MeowZiii98/android_device_oneplus_aston.git -b lineage-23.0 device/oneplus/aston --depth=1

git clone https://github.com/LineageOS/android_device_oneplus_sm8550-common.git -b lineage-23.0 device/oneplus/sm8550-common --depth=1
git clone https://github.com/LineageOS/android_kernel_oneplus_sm8550.git -b lineage-23.0 kernel/oneplus/sm8550 --depth=1
git clone https://github.com/LineageOS/android_kernel_oneplus_sm8550-modules.git -b lineage-23.0 kernel/oneplus/sm8550-modules --depth=1
git clone https://github.com/LineageOS/android_kernel_oneplus_sm8550-devicetrees.git -b lineage-23.0 kernel/oneplus/sm8550-devicetrees --depth=1
git clone https://github.com/LineageOS/android_hardware_oplus.git -b lineage-23.0 hardware/oplus --depth=1
git clone https://github.com/TheMuppets/proprietary_vendor_oneplus_aston.git -b lineage-23.0 vendor/oneplus/aston --depth=1
git clone https://github.com/TheMuppets/proprietary_vendor_oneplus_sm8550-common.git -b lineage-23.0 vendor/oneplus/sm8550-common --depth=1

. build/envsetup.sh
lunch infinity_aston-userdebug
m bacon