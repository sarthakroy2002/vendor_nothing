#
# Copyright (C) 2022 Sarthak Roy
# SPDX-License-Identifer: Apache-2.0
#

# Overlays
PRODUCT_PACKAGES += \
	NTSystemUI \
	NTFrameworks

# Bootanimation
ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
    PRODUCT_COPY_FILES += vendor/nothing/bootanimation/bootanimation1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif

# Sounds
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/nothing/audio/alarms,$(TARGET_COPY_OUT_PRODUCT)/media/audio/alarms)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/nothing/audio/notifications,$(TARGET_COPY_OUT_PRODUCT)/media/audio/notifications)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/nothing/audio/ringtones,$(TARGET_COPY_OUT_PRODUCT)/media/audio/ringtones)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/nothing/audio/ui,$(TARGET_COPY_OUT_PRODUCT)/media/audio/ui)

# Apps
PRODUCT_PACKAGES += \
    VoiceRecorder
