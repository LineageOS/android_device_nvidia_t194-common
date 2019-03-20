LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE               := init.t19x.rc
LOCAL_MODULE_CLASS         := ETC
LOCAL_SRC_FILES            := init.t19x.rc
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := init.t19x_common.rc
LOCAL_MODULE_CLASS         := ETC
LOCAL_SRC_FILES            := init.t19x_common.rc
LOCAL_VENDOR_MODULE        := true
LOCAL_MODULE_RELATIVE_PATH := init/hw
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE       := ueventd.t194ref.rc
LOCAL_MODULE_STEM  := ueventd.rc
LOCAL_MODULE_CLASS := ETC
LOCAL_SRC_FILES    := ueventd.t194ref.rc
LOCAL_MODULE_PATH  := $(TARGET_OUT_VENDOR)
include $(BUILD_PREBUILT)
