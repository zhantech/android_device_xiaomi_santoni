#
# Copyright (C) 2019 The Komodo-Os Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

$(call inherit-product, device/xiaomi/santoni/full_santoni.mk)

# Inherit some common Komodo-Os stuff.
$(call inherit-product, vendor/komodo/config/common_full_phone.mk)

PRODUCT_DEVICE := santoni
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4
PRODUCT_NAME := komodo_santoni
BOARD_VENDOR := Xiaomi
PRODUCT_MANUFACTURER := Xiaomi

# Gapps
CURRENT_BUILD_TYPE := nogapps

# OFFICIAL TAG
KOMODO_OFFICIAL=true
KOMODO_VARIANT = RELEASE

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build fingerprint
BUILD_FINGERPRINT := google/coral/coral:11/RQ1A.201205.008/6943376:user/release-keys
BUILD_DESCRIPTION := santoni-user 7.1.2 N2G47H V9.5.10.0.NAMMIFD release-keys

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"
