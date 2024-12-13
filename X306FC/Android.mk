LOCAL_PATH := $(call mydir)

ifeq ($(TARGET_DEVICE),X306FC)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
