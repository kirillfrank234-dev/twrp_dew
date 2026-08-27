$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit TWRP/Omni core config
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from device makefile
$(call inherit-product, device/xiaomi/dew/device.mk)

PRODUCT_DEVICE := dew
PRODUCT_NAME := omni_dew
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 15C
PRODUCT_MANUFACTURER := xiaomi
