LOCAL_PATH := device/xiaomi/dew

# A/B Partitioning & Fastbootd service
PRODUCT_PACKAGES += \
    android.hardware.boot@1.2-impl \
    android.hardware.boot@1.2-service \
    android.hardware.fastboot@1.1-impl \
    android.hardware.fastboot@1.1-service
