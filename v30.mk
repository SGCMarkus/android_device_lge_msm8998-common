#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
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

# Inherit proprietary blobs
$(call inherit-product-if-exists, vendor/lge/v30-common/v30-common-vendor.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := 640dpi
PRODUCT_AAPT_PREBUILT_DPI := xxxhdpi xxhdpi xhdpi hdpi

#$(call inherit-product, frameworks/native/build/phone-xxxhdpi-4096-dalvik-heap.mk)

$(call inherit-product-if-exists, frameworks/native/build/phone-xxxhdpi-4096-hwui-memory.mk)

# Dalvik
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapgrowthlimit=256m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.25 \
    dalvik.vm.heapminfree=4m \
    dalvik.vm.heapmaxfree=16m

# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

# Add WiFi Config files
# TEMP: These are broken right now
#$(call inherit-product, hardware/broadcom/wlan/bcmdhd/config/config-bcm.mk)

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.audio.pro.xml:system/etc/permissions/android.hardware.audio.pro.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.full.xml:system/etc/permissions/android.hardware.camera.full.xml \
    frameworks/native/data/etc/android.hardware.camera.raw.xml:system/etc/permissions/android.hardware.camera.raw.xml \
    frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.opengles.aep.xml:system/etc/permissions/android.hardware.opengles.aep.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.ambient_temperature.xml:system/etc/permissions/android.hardware.sensor.ambient_temperature.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.hifi_sensors.xml:system/etc/permissions/android.hardware.sensor.hifi_sensors.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.relative_humidity.xml:system/etc/permissions/android.hardware.sensor.relative_humidity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.vulkan.level-0.xml:system/etc/permissions/android.hardware.vulkan.level.xml \
    frameworks/native/data/etc/android.hardware.vulkan.version-1_0_3.xml:system/etc/permissions/android.hardware.vulkan.version.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml

# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8998 \
    audio.r_submix.default \
    audio.usb.default \
    audio_amplifier.msm8998 \
    libaudio-resampler \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    libvolumelistener \
    tinymix

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
#    $(LOCAL_PATH)/audio/audio_output_policy.conf:system/vendor/etc/audio_output_policy.conf \
#    $(LOCAL_PATH)/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
#    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
#    $(LOCAL_PATH)/audio/audio_policy_configuration.xml:/system/etc/audio_policy_configuration.xml \
#    $(LOCAL_PATH)/audio/listen_platform_info.xml:system/etc/listen_platform_info.xml \
#    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths_wcd9340.xml:system/etc/sound_trigger_mixer_paths_wcd9340.xml \
#    $(LOCAL_PATH)/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
#    $(LOCAL_PATH)/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml \
#    $(LOCAL_PATH)/audio/mirrorlink_audio_policy_configuration.xml:system/etc/mirrorlink_audio_policy_configuration.xml

#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/audio/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
#    $(LOCAL_PATH)/audio/audio_policy_volumes_amp_drc.xml:/system/etc/audio_policy_volumes_amp_drc.xml \
#    $(LOCAL_PATH)/audio/default_volume_tables.xml:/system/etc/default_volume_tables.xml

PRODUCT_COPY_FILES += \
    device/lge/v30-common/audio/aanc_tuning_mixer.txt:system/etc/aanc_tuning_mixer.txt \
    device/lge/v30-common/audio/audio_platform_info.xml:system/etc/audio_platform_info.xml \
    device/lge/v30-common/audio/audio_platform_info_i2s.xml:system/etc/audio_platform_info_i2s.xml \
    device/lge/v30-common/audio/audio_policy_configuration.xml:system/etc/audio_policy_configuration.xml \
    device/lge/v30-common/audio/listen_platform_info.xml:system/etc/listen_platform_info.xml \
    device/lge/v30-common/audio/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/lge/v30-common/audio/mixer_paths_dtp.xml:system/etc/mixer_paths_dtp.xml \
    device/lge/v30-common/audio/mixer_paths_i2s.xml:system/etc/mixer_paths_i2s.xml \
    device/lge/v30-common/audio/mixer_paths_qvr.xml:system/etc/mixer_paths_qvr.xml \
    device/lge/v30-common/audio/mixer_paths_skuk.xml:system/etc/mixer_paths_skuk.xml \
    device/lge/v30-common/audio/mixer_paths_tasha.xml:system/etc/mixer_paths_tasha.xml \
    device/lge/v30-common/audio/mixer_paths_tasha_mic.xml:system/etc/mixer_paths_tasha_mic.xml \
    device/lge/v30-common/audio/mixer_paths_tavil.xml:system/etc/mixer_paths_tavil.xml \
    device/lge/v30-common/audio/sound_trigger_mixer_paths.xml:system/etc/sound_trigger_mixer_paths.xml \
    device/lge/v30-common/audio/sound_trigger_mixer_paths_wcd9330.xml:system/etc/sound_trigger_mixer_paths_wcd9330.xml \
    device/lge/v30-common/audio/sound_trigger_mixer_paths_wcd9340.xml:system/etc/sound_trigger_mixer_paths_wcd9340.xml \
    device/lge/v30-common/audio/sound_trigger_platform_info.xml:system/etc/sound_trigger_platform_info.xml

#PRODUCT_COPY_FILES += \
#    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml \
#    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
#    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml

PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:/system/etc/a2dp_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml


# Audio
#PRODUCT_COPY_FILES += \
#    $(LOCAL_PATH)/audio/mixer_paths_tavil.xml:system/etc/mixer_paths_tavil.xml


# Bluetooth
PRODUCT_PACKAGES += \
    hwaddrs

# Camera
PRODUCT_PACKAGES += \
    Snap

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Connectivity Engine support (CNE)
PRODUCT_PACKAGES += \
    cneapiclient \
    com.quicinc.cne \
    services-ext

# Device init scripts
#PRODUCT_PACKAGES += \
#    fstab.qcom \
#    init.qcom.rc \
#    init.qcom.sh \
#    init.qcom.sensors.sh \
#    init.qcom.usb.rc \
#    init.target.rc \
#    ueventd.qcom.rc

#PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/rootdir/etc/fstab.joan:root/fstab.joan \
#     $(LOCAL_PATH)/rootdir/etc/fstab.qcom:root/fstab.qcom \
#     $(LOCAL_PATH)/rootdir/etc/init.class_main.sh:root/init.class_main.sh \
#     $(LOCAL_PATH)/rootdir/etc/init.joan.power.rc:root/init.joan.power.rc \
#     $(LOCAL_PATH)/rootdir/etc/init.joan.rc:root/init.joan.rc \
#     $(LOCAL_PATH)/rootdir/etc/init.joan_core.rc:root/init.joan_core.rc \
#     $(LOCAL_PATH)/rootdir/etc/init.joan_product.rc:root/init.joan_product.rc \
#     $(LOCAL_PATH)/rootdir/etc/init.msm8998.crash.sh:root/init.msm8998.crash.sh \
#     $(LOCAL_PATH)/rootdir/etc/init.msm8998_core.rc:root/init.msm8998_core.rc \
#     $(LOCAL_PATH)/rootdir/etc/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
#     $(LOCAL_PATH)/rootdir/etc/init.qcom.rc:root/init.qcom.rc \
#     $(LOCAL_PATH)/rootdir/etc/init.qcom.sensors.sh:root/init.qcom.sensors.sh \
#     $(LOCAL_PATH)/rootdir/etc/init.qcom.sh:root/init.qcom.sh \
#     $(LOCAL_PATH)/rootdir/etc/init.target.rc:root/init.target.rc \
#     $(LOCAL_PATH)/rootdir/etc/init.usb.configfs.rc:root/init.usb.configfs.rc \
#     $(LOCAL_PATH)/rootdir/etc/loggy.sh:root/loggy.sh \
#     $(LOCAL_PATH)/rootdir/etc/set_emmc_size.sh:root/set_emmc_size.sh \
#     $(LOCAL_PATH)/rootdir/etc/ueventd.joan.rc:root/ueventd.joan.rc \
#     $(LOCAL_PATH)/rootdir/etc/ueventd.rc:root/ueventd.rc \
#     $(LOCAL_PATH)/rootdir/etc/init.time_in_state.sh:root/init.time_in_state.sh \
#     $(LOCAL_PATH)/rootdir/etc/ramoops_backup.sh:root/ramoops_backup.sh

PRODUCT_COPY_FILES += \
     $(LOCAL_PATH)/rootdir/root/fstab.qcom:root/fstab.qcom \
     $(LOCAL_PATH)/rootdir/root/init.qcom.power.rc:root/init.qcom.power.rc \
     $(LOCAL_PATH)/rootdir/root/init.class_main.sh:root/init.class_main.sh \
     $(LOCAL_PATH)/rootdir/root/init.qcom.rc:root/init.qcom.rc \
     $(LOCAL_PATH)/rootdir/root/init.qcom.fs.rc:root/init.qcom.fs.rc \
     $(LOCAL_PATH)/rootdir/root/init.msm8998.crash.sh:root/init.msm8998.crash.sh \
     $(LOCAL_PATH)/rootdir/root/init.msm8998_core.rc:root/init.msm8998_core.rc \
     $(LOCAL_PATH)/rootdir/root/init.qcom.class_core.sh:root/init.qcom.class_core.sh \
     $(LOCAL_PATH)/rootdir/root/init.qcom.sensors.sh:root/init.qcom.sensors.sh \
     $(LOCAL_PATH)/rootdir/root/init.qcom.sh:root/init.qcom.sh \
     $(LOCAL_PATH)/rootdir/root/init.target.rc:root/init.target.rc \
     $(LOCAL_PATH)/rootdir/root/init.qcom.usb.configfs.rc:root/init.qcom.usb.configfs.rc \
     $(LOCAL_PATH)/rootdir/root/init.qcom.usb.rc:root/init.qcom.usb.rc \
     $(LOCAL_PATH)/rootdir/root/loggy.sh:root/loggy.sh \
     $(LOCAL_PATH)/rootdir/root/set_emmc_size.sh:root/set_emmc_size.sh \
     $(LOCAL_PATH)/rootdir/root/ueventd.qcom.rc:root/ueventd.qcom.rc \
     $(LOCAL_PATH)/rootdir/root/ueventd.rc:root/ueventd.rc \
     $(LOCAL_PATH)/rootdir/root/init.time_in_state.sh:root/init.time_in_state.sh \
     $(LOCAL_PATH)/rootdir/root/ramoops_backup.sh:root/ramoops_backup.sh \
     $(LOCAL_PATH)/rootdir/bin/init.qti.qseecomd.sh:root/init.qti.qseecomd.sh \
     $(LOCAL_PATH)/rootdir/root/init.qcom.post_boot.sh:root/init.qcom.post_boot.sh \
     $(LOCAL_PATH)/rootdir/root/init.qcom.usb.sh:root/init.qcom.usb.sh

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/init.lge.zramswap.sh:system/etc/init.lge.zramswap.sh \
    $(LOCAL_PATH)/rootdir/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh

#PRODUCT_COPY_FILES += \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.atd.rc:root/init.lge.atd.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.audio.rc:root/init.lge.audio.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.bt.rc:root/init.lge.bt.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.early.rc:root/init.lge.early.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.fingerprints.rc:root/init.lge.fingerprints.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.fm.rc:root/init.lge.fm.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.fs.rc:root/init.lge.fs.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.ima.rc:root/init.lge.ima.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.log.rc:root/init.lge.log.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.modem_log.rc:root/init.lge.modem_log.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.power.rc:root/init.lge.power.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.rc:root/init.lge.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.sensors.rc:root/init.lge.sensors.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.svelte.rc:root/init.lge.svelte.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.usb.configfs.rc:root/init.lge.usb.configfs.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.usb.rc:root/init.lge.usb.rc \
#     $(LOCAL_PATH)/rootdir/lge/init.lge.usb.sh:root/init.lge.usb.sh \
#     $(LOCAL_PATH)/rootdir/lge/init.laop.rc:root/init.laop.rc

# Display
PRODUCT_PACKAGES += \
    copybit.msm8998 \
    gralloc.msm8998 \
    hdmi_cec.msm8998 \
    hwcomposer.msm8998 \
    memtrack.msm8998 \
    liboverlay \
    qdcm_calib_data_SW43402_cmd_mode_dsc_dsi_panel.xml \
    hdr_tm_config.xml

# Doze mode
PRODUCT_PACKAGES += \
    LGDoze

# Fingerprint
PRODUCT_PACKAGES += \
    fingerprintd

# For android_filesystem_config.h
PRODUCT_PACKAGES += \
    fs_config_files

# Gesture handler
PRODUCT_PACKAGES += \
    GestureHandler

# GPS
PRODUCT_PACKAGES += \
    gps.msm8998 \
    libgnsspps \
    libcurl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/gps/etc/izat.conf:system/etc/izat.conf \
    $(LOCAL_PATH)/gps/etc/flp.conf:system/etc/flp.conf \
    $(LOCAL_PATH)/gps/etc/lowi.conf:system/etc/lowi.conf \
    $(LOCAL_PATH)/gps/etc/sap.conf:system/etc/sap.conf \
    $(LOCAL_PATH)/gps/etc/xtwifi.conf:system/etc/xtwifi.conf

# IMS
#PRODUCT_PACKAGES += \
#    libshims_ims

# IPACM
PRODUCT_PACKAGES += \
    IPACM_cfg.xml \
    ipacm

# IPv6
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:system/vendor/etc/msm_irqbalance.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:system/etc/sec_config

# Lights
#PRODUCT_PACKAGES += \
#    lights.msm8998

# LiveDisplay native
PRODUCT_PACKAGES += \
    libjni_livedisplay

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml

# NFC
PRODUCT_PACKAGES += \
    com.android.nfc_extras \
    com.nxp.nfc.nq \
    libnqnfc-nci \
    libp61-jcop-kit \
    nfc_nci.nqx.default \
    NQNfcNci \
    nqnfcee_access.xml \
    nqnfcse_access.xml \
    Tag

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/libnfc-nxp.conf:system/etc/libnfc-nxp.conf

# OMX
PRODUCT_PACKAGES += \
    libc2dcolorconvert \
    libdashplayer \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libextmedia_jni \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxCore \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libOmxSwVencMpeg4 \
    libOmxSwVencHevc \
    libOmxVdec \
    libOmxVdecHevc \
    libOmxVenc \
    libOmxVidcCommon \
    libstagefrighthw \
    libstagefright_soft_flacdec

# Power
PRODUCT_PACKAGES += \
    power.msm8998 \
    thermal.msm8998

# Recovery
PRODUCT_PACKAGES += \
    librecovery_updater_msm8998

# RIL
PRODUCT_PACKAGES += \
    liblge \
    libprotobuf-cpp-full \
    librmnetctl

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8998

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:system/etc/sensors/hals.conf \


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/sensor_def_joan.conf:system/etc/sensors/sensor_def_common.conf

# Thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermal-engine.conf:system/etc/thermal-engine.conf \
    $(LOCAL_PATH)/configs/thermal-engine-8998.conf:system/etc/thermal-engine-8998.conf

# Tools
PRODUCT_PACKAGES += \
    libcurl \
    libjson \
    libtinyxml \
    libxml2

# USB
#PRODUCT_PACKAGES += \
#    com.android.future.usb.accessory

# Virtual Reality
PRODUCT_PACKAGES += \
    vr.msm8998

# Wifi
PRODUCT_PACKAGES += \
    libqsap_sdk \
    libQWiFiSoftApCfg \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/configs/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

# ADB crap
PRODUCT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0
