#
# Copyright (C) 2015 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit from sanders device
$(call inherit-product, device/motorola/sanders/device.mk)

# Inherit some common Project-Fluid stuff.
$(call inherit-product, vendor/fluid/config/common_full_phone.mk)

# Gapps Flags
PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_INCLUDE_GAPPS := true
TARGET_INCLUDE_MINIMAL_GAPPS := true
IS_PHONE := true
TARGET_GAPPS_ARCH := arm64

# Build Type
FLUID_BUILD_TYPE := UNOFFICIAL

# Boot animation
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sanders
PRODUCT_NAME := fluid_sanders
PRODUCT_BRAND := motorola
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := Moto G (5S) Plus

# Proprieties fluid
PRODUCT_PRODUCT_PROPERTIES += \
  ro.fluid.maintainer=FalconJaw \
  ro.fluid.cpu=SDM625

PRODUCT_SYSTEM_PROPERTY_BLACKLIST := ro.product.model

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="Moto G5S Plus" \
    TARGET_DEVICE="sanders" \
    PRIVATE_BUILD_DESC="sanders-user 8.1.0 OPS28.65-36 9fea release-keys"

# for specific
$(call inherit-product, vendor/motorola/sanders/sanders-vendor.mk)

# FINGERPRINT
BUILD_FINGERPRINT := google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys
