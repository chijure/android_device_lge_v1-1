# Copyright 2016 The Android Open Source Project
# Copyright 2016 TeamHacklG
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file includes all definitions that apply to ALL L1II devices
# Everything in this directory will become public

$(call inherit-product, device/lge/msm7x27a-common/msm7x27a-common.mk)
$(call inherit-product-if-exists, vendor/lge/v1/v1-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/lge/v1/overlay

PRODUCT_AAPT_CONFIG := normal ldpi mdpi
PRODUCT_AAPT_PREF_CONFIG := ldpi

PRODUCT_COPY_FILES += \
    device/lge/v1/rootdir/root/fstab.v1:root/fstab.v1 \
    device/lge/v1/rootdir/root/init.v1.rc:root/init.v1.rc \
    device/lge/v1/rootdir/root/init.v1ds.sh:root/init.v1ds.sh \
    device/lge/v1/rootdir/root/ueventd.v1.rc:root/ueventd.v1.rc

PRODUCT_COPY_FILES += \
    device/lge/v1/rootdir/system/usr/keylayout/mms100s_ts.kl:system/usr/keylayout/mms100s_ts.kl \
    device/lge/v1/rootdir/system/usr/keylayout/v1_keypad.kl:system/usr/keylayout/v1_keypad.kl

PRODUCT_COPY_FILES += \
    device/lge/msm7x27a-common/rootdir/system/etc/gen2_media_profiles.xml:system/etc/media_profiles.xml

# Light HAL
PRODUCT_PACKAGES += lights.msm7x27a

include device/lge/v1/system_prop.mk
