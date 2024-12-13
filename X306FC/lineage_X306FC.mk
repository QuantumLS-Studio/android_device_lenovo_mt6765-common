# This product makefile is parsed during the lunch command,
# which takes it from vendorsetup.sh

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

COMMON_LUNCH_CHOICES := \
    lineage_X306FC-userdebug \
    lineage_X306FC-eng 

$(call inherit-product, device/lenovo/mt6765-common/X306FC/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_X306FC
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_DEVICE := X306FC
PRODUCT_MODEL := Lenovo Tab M10HD 2nd

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=X306FC
