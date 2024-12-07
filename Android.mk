#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifneq ($(TARGET_DEVICE), X306FC)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif
