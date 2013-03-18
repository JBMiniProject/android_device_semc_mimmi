## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Inherit some common jbmp stuff.
$(call inherit-product, vendor/jbmp/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/semc/mimmi/mimmi.mk)

# Setup device configuration
PRODUCT_RELEASE_NAME := U20i
PRODUCT_DEVICE := mimmi
PRODUCT_NAME := jbmp_mimmi
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := U20i
PRODUCT_MANUFACTURER := Sony Ericsson

# Release data
PRODUCT_VERSION_DEVICE_SPECIFIC := 3
TARGET_NO_LIVEWALLPAPERS := false
TARGET_BOOTANIMATION_NAME := vertical-240x320
TARGET_INCLUDE_GAPPS := true
TARGET_USES_SRS := true
SEMC_KEYBOARD := true

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=U20
