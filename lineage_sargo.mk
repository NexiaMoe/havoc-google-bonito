#
# Copyright (C) 2020-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common Lineage stuff.
TARGET_DISABLE_EPPE := true
# $(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/bonito/aosp_sargo.mk)

include device/google/bonito/device-lineage.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 3a
PRODUCT_NAME := lineage_sargo

# Boot animation
TARGET_SCREEN_HEIGHT := 2220
TARGET_SCREEN_WIDTH := 1080

HAVOC_BUILD_TYPE := Unofficial
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_INCLUDE_WIFI_EXT := true
# TARGET_SYSTEM_PROP := $(LOCAL_PATH)/system.prop
WITH_GAPPS := true
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_PRODUCT_PROPERTIES += \
  ro.control_privapp_permissions=log

PRODUCT_BUILD_SUPER_PARTITION := false
PRODUCT_BROKEN_VERIFY_USES_LIBRARIES := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=sargo \
    PRIVATE_BUILD_DESC="sargo-user 12 SP2A.220505.008 8782922 release-keys"

BUILD_FINGERPRINT := google/sargo/sargo:12/SP2A.220505.008/8782922:user/release-keys

$(call inherit-product, vendor/google/sargo/sargo-vendor.mk)
