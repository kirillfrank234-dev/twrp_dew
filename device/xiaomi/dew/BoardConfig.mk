#
# Copyright (C) 2026 The TWRP Open Source Project
# Device Configuration for Redmi 15C (dew / missi)
#

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

TARGET_PREBUILT_KERNEL := device/xiaomi/dew/kernel

# Architecture - MediaTek Platform
TARGET_BOARD_PLATFORM := mt6768
PRODUCT_PLATFORM := missi

# 16KB Page Size Support (Критическое требование Android 16)
TARGET_BOOTS_16K_PAGEALIGN := true
BOARD_BOOT_PAGE_SIZE := 16384
BOARD_KERNEL_PAGESIZE := 16384

# Kernel CONFIG & Headers v4
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_INIT_BOOT_IMAGE_PARTITION_SIZE := 8388608
BOARD_INIT_BOOT_HEADER_VERSION := 4
BOARD_MKBOOTIMG_ARGS := --header_version 4

# Partition Types & EROFS Support
BOARD_HAS_EROFS := true
BOARD_SUPPORTS_COMPRESSED_KERNEL := true

# Xiaomi Dynamic Partitions (Данные из Scatter-файла)
BOARD_SUPER_PARTITION_SIZE := 9663676416
BOARD_SUPER_PARTITION_GROUPS := xiaomi_dynamic_partitions
BOARD_XIAOMI_DYNAMIC_PARTITIONS_SIZE := 9663676416
BOARD_XIAOMI_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product system_ext odm

# Storage & Android 16 Crypto (FBEv3 / v2+inlinecrypt)
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
BOARD_USES_METADATA_PARTITION := true
PLATFORM_VERSION := 16
PLATFORM_SDK_VERSION := 36

# Graphics, Gralloc & Framebuffer (Фиксы под Mali GPU)
TARGET_SCREEN_DENSITY := 280
RECOVERY_GRAPHICS_USE_GRALLOC := true
BOARD_RECOVERY_BLANK_SCREEN := true
RO_VENDOR_MTK_DISPLAY_TYPE := "lcd"
TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# Paths
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
