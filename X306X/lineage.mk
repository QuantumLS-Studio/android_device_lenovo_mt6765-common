# This product makefile is parsed during the lunch command,
# which takes it from vendorsetup.sh

COMMON_LUNCH_CHOICES := \
    lineage_X306X-userdebug \
    lineage_X306X-eng 

$(call inherit-product, device/lenovo/mt6765-common/X306X/device.mk)

PRODUCT_NAME := lineage_X306X
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_DEVICE := X306X
PRODUCT_MODEL := Lenovo Tab M10HD 2nd

PRODUCT_GMS_CLIENTID_BASE := android-lenovo
