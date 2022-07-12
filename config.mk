#
# Copyright (C) 2022 Sarthak Roy
# SPDX-License-Identifer: Apache-2.0
#

# Build support for extras
PRODUCT_PACKAGES += \
	NTSystemUI \
	NTFrameworks

ifeq ($(TARGET_BOOT_ANIMATION_RES),1080)
    PRODUCT_COPY_FILES += vendor/nothing/bootanimation/bootanimation1080.zip:$(TARGET_COPY_OUT_PRODUCT)/media/bootanimation.zip
endif
