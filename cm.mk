# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

# Inherit AOSP Kitakami device parts
$(call inherit-product, device/sony/satsuki/aosp_e6853.mk)

# Inherit CM Kitakami device parts
$(call inherit-product, device/sony/kitakami/platform2.mk)

# Inherit CM common Phone stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Fingerprint for satsuki (from stock)
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=E6853
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_FINGERPRINT=Sony/satsuki/satsuki:6.0/KITAKAMI-2.1.1-160226-0810/1:user/dev-keys
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="satsuki-user 6.0 KITAKAMI-2.1.1-160226-0810 1 dev-keys"

# Override Product Name for crDroid
PRODUCT_NAME := cm_satsuki
PRODUCT_MODEL := Xperia Z5 Premium
