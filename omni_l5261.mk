#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from l5261 device
$(call inherit-product, device/wiko/l5261/device.mk)

PRODUCT_DEVICE := l5261
PRODUCT_NAME := omni_l5261
PRODUCT_BRAND := WIKO
PRODUCT_MODEL := PULP FAB 4G
PRODUCT_MANUFACTURER := wiko

PRODUCT_GMS_CLIENTID_BASE := android-wiko

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="l5261-user 5.1.1 LMY47V 161 release-keys"

BUILD_FINGERPRINT := WIKO/l5261/l5261:5.1.1/LMY47V/android09281605:user/release-keys
