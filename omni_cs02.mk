# Inherit from the common Open Source product configuration
$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_cs02
PRODUCT_DEVICE := cs02
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G350
PRODUCT_MANUFACTURER := samsung
