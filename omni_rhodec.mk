#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from rhodec device
$(call inherit-product, device/motorola/rhodec/device.mk)

PRODUCT_DEVICE := rhodec
PRODUCT_NAME := omni_rhodec
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g62 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="rhodec_g-user 11 T1SSS33.1-119-8-16 e6fa84 release-keys"

BUILD_FINGERPRINT := motorola/rhodec_g/rhodec:11/T1SSS33.1-119-8-16/e6fa84:user/release-keys
