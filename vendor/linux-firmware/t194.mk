# Copyright (C) 2024 The LineageOS Project
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

T194_FIRMWARE_PATH := external/linux-firmware-mainline/firmware

DOWNSTREAM_BRANCH    := r35
T194_DOWNSTREAM_PATH := vendor/nvidia/t194/$(DOWNSTREAM_BRANCH)/firmware

# Upstream firmware
PRODUCT_PACKAGES += \
    linux_firmware_nvidia-tegra194

# GPU firmware
PRODUCT_COPY_FILES += \
    $(T194_DOWNSTREAM_PATH)/gv11b/acr_ucode_dbg.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/acr_ucode_dbg.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/acr_ucode_prod.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/acr_ucode_prod.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/fecs.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/fecs.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/fecs_sig.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/fecs_sig.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/gpccs.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/gpccs.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/gpccs_sig.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/gpccs_sig.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/gpmu_ucode.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/gpmu_ucode.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/gpmu_ucode_desc.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/gpmu_ucode_desc.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/gpmu_ucode_image.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/gpmu_ucode_image.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/NETA_img.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/NETA_img.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/NETB_img.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/NETB_img.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/NETC_img.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/NETC_img.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/NETD_img.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/NETD_img.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/pmu_bl.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/pmu_bl.bin \
    $(T194_DOWNSTREAM_PATH)/gv11b/pmu_sig.bin:$(TARGET_COPY_OUT_VENDOR)/firmware/gv11b/pmu_sig.bin

# General firmware
PRODUCT_COPY_FILES += \
    $(T194_DOWNSTREAM_PATH)/tegra19x/nvhost_nvdec040_ns.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra194/nvdec.bin \
    $(T194_DOWNSTREAM_PATH)/tegra19x/nvhost_nvenc070.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra194/nvenc.bin \
    $(T194_DOWNSTREAM_PATH)/tegra19x/nvhost_nvjpg012.fw:$(TARGET_COPY_OUT_VENDOR)/firmware/nvidia/tegra194/nvjpg.bin


# Recovery / Boot Ramdisk
PRODUCT_COPY_FILES += \
    $(T194_FIRMWARE_PATH)/nvidia/tegra194/xusb.bin:recovery/root/lib/firmware/nvidia/tegra194/xusb.bin \
    $(T194_FIRMWARE_PATH)/nvidia/tegra194/xusb.bin:$(TARGET_COPY_OUT_VENDOR_RAMDISK)/lib/firmware/nvidia/tegra194/xusb.bin
