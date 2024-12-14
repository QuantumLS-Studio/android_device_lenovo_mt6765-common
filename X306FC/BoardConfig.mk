DEVICE_PATH := device/lenovo/mt6765-common/X306FC/

# inherit from the common version
include device/lenovo/mt6765-common/BoardConfigCommon.mk

TARGET_SCREEN_DENSITY := 151

# Kernel
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/Image.gz
BOARD_PREBUILT_DTBIMAGE_DIR := $(DEVICE_PATH)/prebuilt/dtb
BOARD_PREBUILT_DTBOIMAGE := $(DEVICE_PATH)/prebuilt/dtbo.img
BOARD_VENDOR_KERNEL_MODULES := $(wildcard $(DEVICE_PATH)/prebuilt/lkm/*.ko)

include vendor/lenovo/X306FC-common/BoardConfigVendor.mk
