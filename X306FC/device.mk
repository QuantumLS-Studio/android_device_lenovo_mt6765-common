# Inherit from mt6765-common
$(call inherit-product, device/lenovo/mt6765-common/device-common.mk)

TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 800

PRODUCT_CHARACTERISTICS := tablet

PRODUCT_SOONG_NAMESPACES += \
	$(LOCAL_PATH)

PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/prebuilt/Image.gz:kernel

# Call the proprietary device makefile
$(call inherit-product-if-exists, vendor/lenovo/X306FC-common/X306FC-common-vendor.mk)
