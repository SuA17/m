#
# Copyright (C) 2022 The Android Open Source Project
# Copyright (C) 2022 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from m10lte device
$(call inherit-product, device/samsung/m10lte/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
$(call inherit-product, vendor/omni/config/gsm.mk)

PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/prebuilt/zImage:kernel \
     $(LOCAL_PATH)/prebuilt/dt.img:dt.img \
     $(LOCAL_PATH)/prebuilt/dt.img:boot.img

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := m10lte
PRODUCT_NAME := omni_m10lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M105G
PRODUCT_MANUFACTURER := samsung
