# Copyright (C) 2012 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit from the common version
-include device/semc/msm7x27-common/msm7x27.mk

DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

# Discard inherited values and use our own instead.
PRODUCT_NAME := jbmp_mimmi
PRODUCT_DEVICE := mimmi
PRODUCT_MODEL := U20i

# Boot files
ifeq ($(TARGET_PREBUILT_KERNEL),)
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
endif

# MediaProfiles configuration file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/media_profiles.xml:system/etc/media_profiles.xml
	
# Wifi firmware
PRODUCT_COPY_FILES += \
    device/semc/mimmi/prebuilt/wlan/tiwlan.ini:system/etc/wifi/tiwlan.ini \
    device/semc/mimmi/prebuilt/wlan/tiwlan_ap.ini:system/etc/wifi/softap/tiwlan_ap.ini
	
# Recovery resources
PRODUCT_COPY_FILES += \
    device/semc/mimmi/recovery/res/images/icon_firmware_error.png:recovery/root/res/images/icon_firmware_error.png \
    device/semc/mimmi/recovery/res/images/icon_firmware_install.png:recovery/root/res/images/icon_firmware_install.png \
    device/semc/mimmi/recovery/res/images/icon_clockwork.png:recovery/root/res/images/icon_clockwork.png \
    device/semc/mimmi/recovery/res/images/icon_error.png:recovery/root/res/images/icon_error.png \
    device/semc/mimmi/recovery/res/images/icon_installing.png:recovery/root/res/images/icon_installing.png \
    device/semc/mimmi/recovery/res/images/icon_installing_overlay01.png:recovery/root/res/images/icon_installing_overlay01.png \
    device/semc/mimmi/recovery/res/images/icon_installing_overlay02.png:recovery/root/res/images/icon_installing_overlay02.png \
    device/semc/mimmi/recovery/res/images/icon_installing_overlay03.png:recovery/root/res/images/icon_installing_overlay03.png \
    device/semc/mimmi/recovery/res/images/icon_installing_overlay04.png:recovery/root/res/images/icon_installing_overlay04.png \
    device/semc/mimmi/recovery/res/images/icon_installing_overlay05.png:recovery/root/res/images/icon_installing_overlay05.png \
    device/semc/mimmi/recovery/res/images/icon_installing_overlay06.png:recovery/root/res/images/icon_installing_overlay06.png \
    device/semc/mimmi/recovery/res/images/icon_installing_overlay07.png:recovery/root/res/images/icon_installing_overlay07.png \
    device/semc/mimmi/recovery/res/images/indeterminate01.png:recovery/root/res/images/indeterminate01.png \
    device/semc/mimmi/recovery/res/images/indeterminate02.png:recovery/root/res/images/indeterminate02.png \
    device/semc/mimmi/recovery/res/images/indeterminate03.png:recovery/root/res/images/indeterminate03.png \
    device/semc/mimmi/recovery/res/images/indeterminate04.png:recovery/root/res/images/indeterminate04.png \
    device/semc/mimmi/recovery/res/images/indeterminate05.png:recovery/root/res/images/indeterminate05.png \
    device/semc/mimmi/recovery/res/images/indeterminate06.png:recovery/root/res/images/indeterminate06.png \
    device/semc/mimmi/recovery/res/images/progress_empty.png:recovery/root/res/images/progress_empty.png \
    device/semc/mimmi/recovery/res/images/progress_fill.png:recovery/root/res/images/progress_fill.png \
    device/semc/mimmi/recovery/res/images/stitch.png:recovery/root/res/images/stitch.png	

# Torch
PRODUCT_PACKAGES += \
    Torch		
		
# Touchsceen
PRODUCT_COPY_FILES += \
    device/semc/mimmi/prebuilt/usr/idc/cy8ctma300_ser.idc:system/usr/idc/cy8ctma300_ser.idc

# Mimmi uses low-density artwork where available
PRODUCT_AAPT_CONFIG := normal ldpi mdpi
PRODUCT_AAPT_PREF_CONFIG := mdpi

PRODUCT_LOCALES += \
 		ldpi \
		mdpi
	
# LCD Density
PRODUCT_PROPERTY_OVERRIDES := \
    ro.sf.lcd_density=120

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Prebuilt Binaries
# Prebuilt Binaries
PRODUCT_COPY_FILES += \
    device/semc/mimmi/prebuilt/app/Torch.apk:system/app/Torch.apk \
    device/semc/mimmi/prebuilt/bin/akmd2:system/bin/akmd2 \
    device/semc/mimmi/prebuilt/bin/chargemon:system/bin/chargemon \
    device/semc/mimmi/prebuilt/bin/inputattach:system/bin/inputattach \
    device/semc/mimmi/prebuilt/bin/nvimport:system/bin/nvimport \
    device/semc/mimmi/prebuilt/bin/port-bridge:system/bin/port-bridge \
    device/semc/mimmi/prebuilt/bin/qmuxd:system/bin/qmuxd \
    device/semc/mimmi/prebuilt/bin/semc_chargalg:system/bin/semc_chargalg \
    device/semc/mimmi/prebuilt/bin/slidercounter:system/bin/slidercounter \
    device/semc/mimmi/prebuilt/bin/updatemiscta:system/bin/updatemiscta \
    device/semc/mimmi/prebuilt/bin/rild:system/bin/rild \
    device/semc/mimmi/prebuilt/bin/tiap_cu:system/bin/tiap_cu \
    device/semc/mimmi/prebuilt/bin/tiap_loader:system/bin/tiap_loader \
    device/semc/mimmi/prebuilt/etc/firmware/cy8_truetouch_tpk.hex:system/etc/firmware/cy8_truetouch_tpk.hex \
    device/semc/mimmi/prebuilt/etc/firmware/cy8_truetouch_jtouch.hex:system/etc/firmware/cy8_truetouch_jtouch.hex \
    device/semc/mimmi/prebuilt/etc/ts_fw_update.sh:system/etc/ts_fw_update.sh \
    device/semc/mimmi/prebuilt/etc/semc/chargemon/anim1.rle:system/etc/semc/chargemon/anim1.rle \
    device/semc/mimmi/prebuilt/etc/semc/chargemon/anim2.rle:system/etc/semc/chargemon/anim2.rle \
    device/semc/mimmi/prebuilt/etc/semc/chargemon/anim3.rle:system/etc/semc/chargemon/anim3.rle \
    device/semc/mimmi/prebuilt/etc/semc/chargemon/anim4.rle:system/etc/semc/chargemon/anim4.rle \
    device/semc/mimmi/prebuilt/etc/semc/chargemon/anim5.rle:system/etc/semc/chargemon/anim5.rle \
    device/semc/mimmi/prebuilt/etc/semc/chargemon/anim6.rle:system/etc/semc/chargemon/anim6.rle \
    device/semc/mimmi/prebuilt/etc/semc/chargemon/anim7.rle:system/etc/semc/chargemon/anim7.rle \
    device/semc/mimmi/prebuilt/etc/semc/chargemon/anim8.rle:system/etc/semc/chargemon/anim8.rle \
    device/semc/mimmi/prebuilt/etc/sensors.conf:system/etc/sensors.conf \
    device/semc/mimmi/prebuilt/framework/com.dsi.ant.antradio_library.jar:system/framework/com.dsi.ant.antradio_library.jar \
    device/semc/mimmi/prebuilt/lib/libaudioeq.so:system/lib/libaudioeq.so \
    device/semc/mimmi/prebuilt/usr/keychars/mimmi_keypad.kcm.bin:system/usr/keychars/mimmi_keypad.kcm.bin \
    device/semc/mimmi/prebuilt/usr/keychars/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin \
    device/semc/mimmi/prebuilt/usr/keychars/systemconnector.kcm.bin:system/usr/keychars/systemconnector.kcm.bin \
    device/semc/mimmi/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/semc/mimmi/prebuilt/usr/keylayout/7k_handset.kl:system/usr/keylayout/7k_handset.kl \
    device/semc/mimmi/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/semc/mimmi/prebuilt/usr/keylayout/systemconnector.kl:system/usr/keylayout/systemconnector.kl \
    device/semc/mimmi/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/semc/mimmi/prebuilt/usr/keylayout/mimmi_keypad.kl:system/usr/keylayout/mimmi_keypad.kl \
