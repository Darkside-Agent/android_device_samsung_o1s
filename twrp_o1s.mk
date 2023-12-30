#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/samsung/o1s

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from o1s device
$(call inherit-product, device/samsung/o1s/device.mk)

PRODUCT_DEVICE := o1s
PRODUCT_NAME := twrp_o1s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G991B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="o1sxxx-user 11 RP1A.200720.012 G991BXXU9FWL3 release-keys"

BUILD_FINGERPRINT := samsung/o1sxxx/o1s:11/RP1A.200720.012/G991BXXU9FWL3:user/release-keys
