# Copyright (C) 2024 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifeq ($(TARGET_TEGRA_FIRMWARE_BRANCH),linux-firmware)
LOCAL_PATH := $(call my-dir)
T194_FIRMWARE_PATH := ../../../../../../kernel/nvidia/linux-firmware

DOWNSTREAM_BRANCH    := r36
T194_DOWNSTREAM_PATH := ../../../../../../vendor/nvidia/t194/$(DOWNSTREAM_BRANCH)/firmware

include $(CLEAR_VARS)
LOCAL_MODULE               := nvdec.bin
LOCAL_SRC_FILES            := $(T194_DOWNSTREAM_PATH)/tegra19x/nvhost_nvdec040_ns.fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra194
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvenc.bin
LOCAL_SRC_FILES            := $(T194_DOWNSTREAM_PATH)/tegra19x/nvhost_nvenc070.fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra194
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := nvjpg.bin
LOCAL_SRC_FILES            := $(T194_DOWNSTREAM_PATH)/tegra19x/nvhost_nvjpg012.fw
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra194
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := vic.bin
LOCAL_SRC_FILES            := $(T194_FIRMWARE_PATH)/nvidia/tegra194/vic.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra194
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE               := xusb.bin
LOCAL_SRC_FILES            := $(T194_FIRMWARE_PATH)/nvidia/tegra194/xusb.bin
LOCAL_MODULE_CLASS         := ETC
LOCAL_MODULE_PATH          := $(TARGET_OUT_VENDOR)/firmware/nvidia/tegra194
LOCAL_MODULE_TAGS          := optional
LOCAL_MODULE_OWNER         := nvidia
include $(BUILD_NVIDIA_ARCH_PREBUILT)
endif
