## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := U20i

# Inherit some common CM stuff.
# $(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/semc/mimmi/device_mimmi.mk)

# Setup device configuration
PRODUCT_DEVICE := mimmi
PRODUCT_NAME := jbmp_mimmi
PRODUCT_BRAND := SEMC
PRODUCT_MODEL := U20i
PRODUCT_MANUFACTURER := Sony Ericsson

# Release data
PRODUCT_VERSION_DEVICE_SPECIFIC := 2
TARGET_NO_LIVEWALLPAPERS := false
TARGET_BOOTANIMATION_NAME := vertical-240x320

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=U20 BUILD_ID=JRO03R BUILD_FINGERPRINT="google/yakju/maguro:4.1.1/JRO03C/398337:user/release-keys" PRIVATE_BUILD_DESC="yakju-user 4.1.1 JRO03C 398337 release-keys"
