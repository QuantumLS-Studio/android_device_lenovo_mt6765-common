# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_m.mk)

# Inherit from common YTX703 device
$(call inherit-product, device/lenovo/mt6765-common/device-common.mk)

# Call the proprietary device makefile
$(call inherit-product, vendor/lenovo/mt6765-common/X306FC/X306FC-common-vendor.mk)
