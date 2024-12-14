# This product makefile is parsed during the lunch command,
# which takes it from vendorsetup.sh

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

$(call inherit-product, device/lenovo/mt6765-common/X306FC/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device
PRODUCT_NAME := lineage_X306FC
PRODUCT_BRAND := Lenovo
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_DEVICE := X306FC
PRODUCT_MODEL := Lenovo Tab M10HD 2nd

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=X306FC \
	PRIVATE_BUILD_DESC="full_amar_row_lte-user 10 QP1A.190711.020 TB-X306X_U release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoTB-X306X_EEA/X306X:10/QP1A.190711.020/TB-X306X_USR_S120712_2303010505_V9.48_BMP_ROW:user/release-keys
