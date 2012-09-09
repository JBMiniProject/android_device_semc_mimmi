# Copyright (C) 2012 The Android Open Source Project
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
# This file sets variables that control the way modules are built
# throughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from the common version
-include device/semc/msm7x27-common/BoardConfigCommon.mk

# Info
TARGET_BOOTLOADER_BOARD_NAME := delta
TARGET_OTA_ASSERT_DEVICE := E10i,E10a,mimmi
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_BOOTLOADER_BOARD_NAME=mimmi

# Touchscreen
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Recovery
BOARD_USES_RECOVERY_CHARGEMODE := false
BOARD_HAS_BOOT_RECOVERY := true
BOARD_HAS_SMALL_RECOVERY := true
BOARD_HAS_JANKY_BACKBUFFER := true
BOARD_LDPI_RECOVERY := true
