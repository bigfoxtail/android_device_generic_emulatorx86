# Copyright (C) 2013 The Android Open Source Project
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


PRODUCT_NAME := emulatorx86
PRODUCT_DEVICE := emulatorx86
PRODUCT_BRAND := Android
PRODUCT_MODEL := Mini Emulator x86

ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=0




PRODUCT_NAME := mini_x86
PRODUCT_DEVICE := x86
PRODUCT_BRAND := Android
PRODUCT_MODEL := Mini for x86

# default is nosdcard, S/W button enabled in resource
DEVICE_PACKAGE_OVERLAYS := device/generic/x86/overlay
PRODUCT_CHARACTERISTICS := nosdcard




PRODUCT_PACKAGES += \
    audio.primary.goldfish \
    camera.goldfish \
    gps.goldfish \
    gralloc.goldfish \
    lights.goldfish \
    power.goldfish \
    sensors.goldfish \
    vibrator.goldfish \
    qemu-props \
    qemud \
    libGLES_android \
    libGLESv1_CM_emulation \
    lib_renderControl_enc \
    libEGL_emulation \
    libGLESv2_enc \
    libOpenglSystemCommon \
    libGLESv2_emulation \
    libGLESv1_enc \
    rild


PRODUCT_COPY_FILES += \
    device/generic/mini-emulator-armv7-a-neon/init.mini-emulator.rc:root/init.goldfish.rc \
    device/generic/goldfish/init.goldfish.sh:system/etc/init.goldfish.sh \
    device/generic/goldfish/ueventd.goldfish.rc:root/ueventd.goldfish.rc \
    device/generic/goldfish/data/etc/apns-conf.xml:system/etc/apns-conf.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf \
    hardware/libhardware_legacy/audio/audio_policy.conf:system/etc/audio_policy.conf \
    device/generic/goldfish/camera/media_profiles.xml:system/etc/media_profiles.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml \
    device/generic/goldfish/camera/media_codecs.xml:system/etc/media_codecs.xml \
    device/generic/goldfish/fstab.goldfish:root/fstab.goldfish



# Copyright (C) 2013 The Android Open Source Project
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

PRODUCT_BRAND := mini
PRODUCT_DEVICE := mini
PRODUCT_NAME := mini

# add all configurations
PRODUCT_AAPT_CONFIG := normal ldpi mdpi hdpi xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# en_US only
PRODUCT_LOCALES := en_US


#    TeleService \
#    Phone \
#    PrintSpooler \
#    Settings \
#    SystemUI \
#    LatinIME \
#    TestingCamera \
#    WAPPushManager \
#    Keyguard \
#    Provision \
#    Bluetooth \
#    FusedLocation \
#    InputDevices \

PRODUCT_PACKAGES += \
    audio \
    audio_policy.default \
    audio.primary.default \
    com.android.future.usb.accessory \
    hostapd \
    librs_jni \
    libvideoeditor_core \
    libvideoeditor_jni \
    libvideoeditor_osal \
    libvideoeditorplayer \
    libvideoeditor_videofilters \
    lint \
    local_time.default \
    network \
    pand \
    power.default \
    sdptool \
    vibrator.default \
    wpa_supplicant.conf

# This is not necessary for mini, but is for mini-emulator as it should
# be included in platform.zip
PRODUCT_PACKAGES += camera.goldfish.jpeg

PRODUCT_COPY_FILES += \
    frameworks/av/media/libeffects/data/audio_effects.conf:system/etc/audio_effects.conf \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \

PRODUCT_PROPERTY_OVERRIDES += \
    ro.carrier=unknown \
    ro.config.ringtone=Ring_Synth_04.ogg \
    ro.config.notification_sound=pixiedust.ogg

#$(call inherit-product, build/target/product/core_base.mk)
$(call inherit-product-if-exists, frameworks/webview/chromium/chromium.mk)
$(call inherit-product-if-exists, frameworks/base/data/keyboards/keyboards.mk)
$(call inherit-product-if-exists, frameworks/base/data/fonts/fonts.mk)
$(call inherit-product-if-exists, external/roboto-fonts/fonts.mk)
$(call inherit-product-if-exists, frameworks/base/data/sounds/AudioPackage5.mk)
