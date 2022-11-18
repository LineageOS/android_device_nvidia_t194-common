# Copyright (C) 2020 The LineageOS Project
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

T194_FIRMWARE_PATH := vendor/nvidia/t194/r35/firmware

# Firmware
ifeq ($(TARGET_TEGRA_KERNEL),4.9)
PRODUCT_COPY_FILES += \
    $(T194_FIRMWARE_PATH)/xusb/tegra19x_xusb_firmware:recovery/root/lib/firmware/tegra19x_xusb_firmware
else
PRODUCT_COPY_FILES += \
    $(T194_FIRMWARE_PATH)/xusb/tegra19x_xusb_firmware:recovery/root/lib/firmware/nvidia/tegra194/xusb.bin
endif

ifeq ($(PRODUCT_USE_DYNAMIC_PARTITIONS),true)
ifeq ($(TARGET_TEGRA_KERNEL),4.9)
PRODUCT_COPY_FILES += \
    $(T194_FIRMWARE_PATH)/xusb/tegra19x_xusb_firmware:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/tegra19x_xusb_firmware
else
PRODUCT_COPY_FILES += \
    $(T194_FIRMWARE_PATH)/xusb/tegra19x_xusb_firmware:$(TARGET_COPY_OUT_RAMDISK)/lib/firmware/nvidia/tegra194/xusb.bin
endif
endif
