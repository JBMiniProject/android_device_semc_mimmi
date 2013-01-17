## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common JBMiniProject and CM stuff.
$(call inherit-product, vendor/jbmp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/semc/mimmi/mimmi.mk)

# Setup device configuration
PRODUCT_RELEASE_NAME := X10 Mini Pro
PRODUCT_DEVICE := mimmi
PRODUCT_NAME := jbmp_mimmi
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := X10 Mini Pro
PRODUCT_MANUFACTURER := Sony Ericsson

# Release data
PRODUCT_VERSION_DEVICE_SPECIFIC := 2
TARGET_NO_LIVEWALLPAPERS := false
TARGET_BOOTANIMATION_NAME := vertical-240x320
TARGET_INCLUDE_GAPPS := true
TARGET_USES_SRS := true

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=U20i
