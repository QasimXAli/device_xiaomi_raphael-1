#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/xiaomi/raphael/device.mk)

# Inherit some common KangOS stuff.
KANGOS_BUILDTYPE := OFFICIAL
TARGET_USES_BLUR := true
TARGET_GAPPS_ARCH := arm64
TARGET_INCLUDE_STOCK_ARCORE := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
#USE_GAPPS := true
TARGET_BOOT_ANIMATION_RES := 1080 $(call inherit-product, vendor/kangos/config/common.mk) 

PRODUCT_PRODUCT_PROPERTIES += \ 
ro.kangos.maintainer=Sherif Rahim \ 
ro.kangos.cpu=SDM855

# Build ANXCamera
$(call inherit-product-if-exists, vendor/ANXCamera/config.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_NAME := kangos_raphael

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
