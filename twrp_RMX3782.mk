#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from ossi device
$(call inherit-product, device/realme/RMX3782/device.mk)

PRODUCT_DEVICE := RMX3782
PRODUCT_NAME := twrp_RMX3782
PRODUCT_BRAND := realme
PRODUCT_MODEL := realme narzo 60x
PRODUCT_MANUFACTURER := $(PRODUCT_BRAND)

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_BRAND)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_k6835v1_64-user 13 TP1A.220905.001 1702295023981 release-keys"

BUILD_FINGERPRINT := realme/RMX3782/RE879EL1:13/TP1A.220905.001/1702295023981:user/release-keys
