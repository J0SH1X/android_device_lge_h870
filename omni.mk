# Release name
PRODUCT_RELEASE_NAME := h870

# Inherit some common AOKP stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/h870/omni_h870.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := h870
PRODUCT_NAME := omni_h870
PRODUCT_BRAND := lge
PRODUCT_MODEL := h870
PRODUCT_MANUFACTURER := lge
