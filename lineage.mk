#
# Copyright 2015 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from panda01a device
$(call inherit-product, device/LYF/panda01a/device.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := LYF
PRODUCT_BRAND := LYF
PRODUCT_DEVICE := panda01a
PRODUCT_NAME := lineage_panda01a
PRODUCT_MANUFACTURER := LYF
PRODUCT_MODEL := Water F1s
TARGET_VENDOR := LYF

PRODUCT_GMS_CLIENTID_BASE := android-ckt

# Use the latest approved GMS identifiers unless running a signed build
ifneq ($(SIGN_BUILD),true)
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=LYF/LS-5201/panda01a_msm8952_64:6.0.1/MMB29M/195:user/release-keys \
    PRIVATE_BUILD_DESC="panda01a_msm8952_64-user 6.0.1 MMB29M 496 release-keys"
endif
