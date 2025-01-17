#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

COMMON_PATH := device/lenovo/mt6765-common

# APEX
WITH_DEXPREOPT := true
DEXPREOPT_GENERATE_APEX_IMAGE := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a53

# Broken
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6765
TARGET_NO_BOOTLOADER := true

TARGET_SUPPORTS_64_BIT_APPS := true

# HIDL
DEVICE_MATRIX_FILE += \
	$(COMMON_PATH)/compatibility_matrix.xml

DEVICE_MANIFEST_FILE += \
	$(COMMON_PATH)/manifest.xml

DEVICE_FRAMWORK_COMPATIBILITY_MATRIX_FILE += \
	vendor/lineage/config/device_framwork_matrix.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(COMMON_PATH):libinit_mt6765

# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_BOOT_HEADER_VERSION := 2
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 androidboot.selinux=permissive androidboot.init_fatal_reboot_target=recovery androidboot.hardware=mt6765
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x07808000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x11a88000
BOARD_DTB_OFFSET := 0x07808000
BOARD_HASH_TYPE := sha1
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_KERNEL_SEPARATED_DTBO := true
BOARD_MKBOOTIMG_ARGS += \
	--base $(BOARD_KERNEL_BASE) \
	--pagesize $(BOARD_KERNEL_PAGESIZE) \
	--ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
	--tags_offset $(BOARD_KERNEL_TAGS_OFFSET) \
	--kernel_offset $(BOARD_KERNEL_OFFSET) \
	--dtb_offset $(BOARD_DTB_OFFSET) \
	--header_version $(BOARD_BOOT_HEADER_VERSION)

TARGET_KERNEL_CONFIG := amar_prc_wifi_com_defconfig
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/lenovo/X306FC

TARGET_FS_CONFIG_GEN := $(COMMON_PATH)/config.fs

# Metadata
BOARD_USES_METADATA_PARTITION := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_DTBOIMG_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_CACHEIMAGE_PARTITION_SIZE := 452984832
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USERDATAIMAGE_PARTITION_SIZE := 56452169216
BOARD_USERDATAIMAGE_FILE_SYSTEM := ext4
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2186825728
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_PARTITION_SIZE := 445849600
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

BOARD_HAS_LARGE_FILESYSTEM := true

# Dynamic partition
BOARD_SUPER_PARTITION_SIZE := 4731174912
BOARD_SUPER_PARTITION_GROUPS := lenovo_dynamic_partitions
BOARD_LENOVO_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor
BOARD_LENOVO_DYNAMIC_PARTITIONS_SIZE := 4517810176

TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := system/product
TARGET_COPY_OUT_SYSTEM_EXT := system/system_ext

# Platform
BOARD_VENDOR := lenovo
BOARD_HAS_MTK_HARDWARE := true
TARGET_BOARD_PLATFORM := mt6765

# Properties
TARGET_PRODUCT_PROP += $(COMMON_PATH)/product.prop
TARGET_SYSTEM_PROP += $(COMMON_PATH)/system.prop
TARGET_VENDOR_PROP += $(COMMON_PATH)/vendor.prop

# Recovery
BOARD_INCLUDE_DTB_IN_BOOTIMG := true
BOARD_INCLUDE_RECOVERY_DTBO := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_RECOVERY_FSTAB := $(COMMON_PATH)/rootdir/etc/fstab

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(COMMON_PATH)

# RIL
ENABLE_VENDOR_RIL_SERVICE := true

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 2
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

# VNDK
PRODUCT_FULL_TREBLE_OVERRIDE := true
BOARD_VNDK_VERSION := current

# Properties
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# SELinux
# Inherit from the common SEPolicy for Lenovo devices
include device/mediatek/sepolicy_vndr/SEPolicy.mk

# Inherit the proprietary files
include vendor/lenovo/mt6765-common/BoardConfigVendor.mk

