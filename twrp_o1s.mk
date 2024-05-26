#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Release name
PRODUCT_RELEASE_NAME := o1s

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from o1s device
$(call inherit-product, device/samsung/o1s/device.mk)

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/o1s/recovery/root,recovery/root)

PRODUCT_DEVICE := o1s
PRODUCT_NAME := twrp_o1s
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G991B
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="o1sxxx-user 11 RP1A.200720.012 G991BXXSAFXCM release-keys"

BUILD_FINGERPRINT := samsung/o1sxxx/o1s:11/RP1A.200720.012/G991BXXSAFXCM:user/release-keys
