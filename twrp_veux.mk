#
# SPDX-License-Identifier: Apache-2.0
#
PRODUCT_RELEASE_NAME := veux
DEVICE_PATH := device/xiaomi/veux
# Inherit from veux device
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, vendor/twrp/config/common.mk)
$(call inherit-product, device/xiaomi/veux/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := twrp_veux
PRODUCT_DEVICE := veux
PRODUCT_BRAND := POCO
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 2201116PI