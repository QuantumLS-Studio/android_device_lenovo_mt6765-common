# Board specific SELinux policy variable definitions
MTK_SEPOLICY_PATH:= device/lenovo/mt6765-common/sepolicy

BOARD_VENDOR_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/non_plat \
    $(MTK_SEPOLICY_PATH)/bsp/non_plat \
    $(MTK_SEPOLICY_PATH)/modem

SYSTEM_EXT_PUBLIC_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/plat_public \
    $(MTK_SEPOLICY_PATH)/bsp/plat_public

SYSTEM_EXT_PRIVATE_SEPOLICY_DIRS += \
    $(MTK_SEPOLICY_PATH)/basic/plat_private \
    $(MTK_SEPOLICY_PATH)/bsp/plat_private

BOARD_SEPOLICY_DIRS += $(wildcard device/lenovo/mt6765-common/sepolicy/bsp/ota_upgrade)

# Inherit Custom sepolicy for mediatek devices
-include device/custom/sepolicy/mediatek/sepolicy.mk
