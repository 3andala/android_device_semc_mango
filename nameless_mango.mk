# Copyright (C) 2011-2013 The CyanogenMod Project
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

# Inherit device configuration
$(call inherit-product, device/semc/mango/full_mango.mk)

# Inherit APNs list
$(call inherit-product, vendor/nameless/config/apns.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/nameless/config/common.mk)

# Device identifier. This must come after all inclusions
PRODUCT_RELEASE_NAME := mango
PRODUCT_DEVICE := mango
PRODUCT_NAME := nameless_mango
PRODUCT_GMS_CLIENTID_BASE := android-sonyericsson
PRODUCT_BRAND := semc
PRODUCT_MODEL := Xperia Mini Pro
PRODUCT_MANUFACTURER := SEMC

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=SK17i \
    PRODUCT_DEVICE=SK17i \
    BUILD_FINGERPRINT="SEMC/SK17i_1254-2184/SK17i:4.0.4/4.1.B.0.587/tL1_3w:user/release-keys" \
    PRIVATE_BUILD_DESC="SK17i-user 4.0.4 4.1.B.0.587 tL1_3w test-keys"
