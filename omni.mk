# Release name
PRODUCT_RELEASE_NAME := h870

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/aokp/configs/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/h870/device_h870.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := h870
PRODUCT_NAME := aokp_h870
PRODUCT_BRAND := lge
PRODUCT_MODEL := h870
PRODUCT_MANUFACTURER := lge
