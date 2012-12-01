## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := Tachy

TARGET_BOOTANIMATION_NAME := vertical-480x800

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/kttech/s220/s220.mk)

# Device naming
PRODUCT_DEVICE := s220
PRODUCT_NAME := cm_s220
PRODUCT_BRAND := KTTech
PRODUCT_MODEL := KM-S220
PRODUCT_MANUFACTURER := KTTech
PRODUCT_DEFAULT_LANGUAGE := ko
PRODUCT_DEFAULT_REGION := KR

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=S220 BUILD_FINGERPRINT=KTTech/S220/s220:4.0.4/IMM76I/KM63262:user/release-keys PRIVATE_BUILD_DESC="S220-user 4.0.4 IMM76I KM63262 release-keys"

# Enable Torch
PRODUCT_PACKAGES += Torch
