$(call inherit-product, build/target/product/full.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product-if-exists, vendor/kttech/s220/s220-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/kttech/s220/overlay

PRODUCT_COPY_FILES += device/common/gps/gps.conf_AS:system/etc/gps.conf

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/ramdisk/init.rc:root/init.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.rc:root/init.qcom.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.rc:root/init.qcom.usb.rc \
    $(LOCAL_PATH)/ramdisk/init.target.rc:root/init.target.rc \
    $(LOCAL_PATH)/ramdisk/ueventd.rc:root/ueventd.rc \
    $(LOCAL_PATH)/ramdisk/init.qcom.sh:root/init.qcom.sh \
    $(LOCAL_PATH)/ramdisk/init.qcom.usb.sh:root/init.qcom.usb.sh \
    $(LOCAL_PATH)/ramdisk/calib.dat:root/sensors/acdapi/calib.dat \
    $(LOCAL_PATH)/ramdisk/param.dat:root/sensors/acdapi/param.dat \
    $(LOCAL_PATH)/ramdisk/sensors.dat:root/sensors/acdapi/sensors.dat \
    $(LOCAL_PATH)/ramdisk/rd_aboot:root/sbin/rd_aboot

# Scripts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.modem_links.sh:system/etc/init.qcom.modem_links.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.mdm_links.sh:system/etc/init.qcom.mdm_links.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.coex.sh:system/etc/init.qcom.coex.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.wifi.sh:system/etc/init.qcom.wifi.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.fm.sh:system/etc/init.qcom.fm.sh \
    $(LOCAL_PATH)/prebuilt/init.qcom.sdio.sh:system/etc/init.qcom.sdio.sh

# Bluetooth
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/init.brcm.bt.sh:system/etc/init.brcm.bt.sh

# NFC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so

# Configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/thermald.conf:system/etc/thermald.conf \
    $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/configs/audio_policy.conf:system/etc/audio_policy.conf

# MSM8660 firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    $(LOCAL_PATH)/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    $(LOCAL_PATH)/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    $(LOCAL_PATH)/firmware/a225_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    $(LOCAL_PATH)/firmware/a225_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    $(LOCAL_PATH)/firmware/vidc_1080p.fw:system/etc/firmware/vidc_1080p.fw \
    $(LOCAL_PATH)/firmware/leia_pfp_470.fw:system/etc/firmware/leia_pfp_470.fw \
    $(LOCAL_PATH)/firmware/leia_pm4_470.fw:system/etc/firmware/leia_pm4_470.fw

# Jellybean Adreno libs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/jb_libs/lib/libc2d2_z180.so:/system/lib/libc2d2_z180.so \
    $(LOCAL_PATH)/jb_libs/lib/libC2D2.so:/system/lib/libC2D2.so \
    $(LOCAL_PATH)/jb_libs/lib/libgsl.so:/system/lib/libgsl.so \
    $(LOCAL_PATH)/jb_libs/lib/libOpenVG.so:/system/lib/libOpenVG.so \
    $(LOCAL_PATH)/jb_libs/lib/libsc-a2xx.so:/system/lib/libsc-a2xx.so \
    $(LOCAL_PATH)/jb_libs/egl/eglsubAndroid.so:/system/lib/egl/eglsubAndroid.so \
    $(LOCAL_PATH)/jb_libs/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \
    $(LOCAL_PATH)/jb_libs/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \
    $(LOCAL_PATH)/jb_libs/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \
    $(LOCAL_PATH)/jb_libs/egl/libGLESv2S3D_adreno200.so:/system/lib/egl/libGLESv2S3D_adreno200.so \
    $(LOCAL_PATH)/jb_libs/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so

# bcmdhd firmware
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/firmware/fw_bcmdhd.bin:system/vendor/firmware/fw_bcmdhd.bin \
    $(LOCAL_PATH)/firmware/fw_bcmdhd_apsta.bin:system/vendor/firmware/fw_bcmdhd_apsta.bin \
    $(LOCAL_PATH)/firmware/fw_bcmdhd_mfg.bin:system/vendor/firmware/fw_bcmdhd_mfg.bin \
    $(LOCAL_PATH)/firmware/fw_bcmdhd_p2p.bin:system/vendor/firmware/fw_bcmdhd_p2p.bin

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/configs/bcmdhd.cal:system/etc/wifi/bcmdhd.cal \
    $(LOCAL_PATH)/prebuilt/wlan.ko:system/lib/modules/wlan.ko

# Init.d
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/install-recovery.sh:/system/etc/install-recovery.sh \

# Vold
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/vold.fstab:system/etc/vold.fstab

# KoreanIME
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/KoreanIME.apk:/system/app/LatinIME.apk \
    $(LOCAL_PATH)/prebuilt/libjni_koreanime.so:/system/lib/libjni_koreanime.so

# RootExplorer
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/RootBrowser.apk:/system/app/RootBrowser.apk \
    $(LOCAL_PATH)/prebuilt/.root_browser:/system/etc/.root_browser

# Permission files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/kttech_touchscreen.idc:/system/usr/idc/kttech_touchscreen.idc \
    $(LOCAL_PATH)/keylayout/ffa-keypad.kl:/system/usr/keylayout/ffa-keypad.kl \
    $(LOCAL_PATH)/keylayout/kttech_handset.kl:/system/usr/keylayout/kttech_handset.kl \
    $(LOCAL_PATH)/keylayout/kttech-keypad.kl:/system/usr/keylayout/kttech-keypad.kl \
    $(LOCAL_PATH)/keylayout/pmic8xxx_pwrkey.kl:/system/usr/keylayout/pmic8xxx_pwrkey.kl

# Kaf
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/kaf/device_info.xml:/system/kaf/device_info.xml \
    $(LOCAL_PATH)/kaf/kaf_conf.xml:/system/kaf/kaf_conf.xml

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += ko_KR hdpi


# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm8660 \
    audio_policy.msm8660 \
    libaudioutils

# Graphics
PRODUCT_PACKAGES += \
    copybit.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    libgenlock \
    libmemalloc \
    liboverlay \
    libQcomUI \
    libtilerenderer

# OMX
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libI420colorconvert \
    libmm-omxcore \
    libOmxCore \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libstagefrighthw

# HDMI
PRODUCT_PACKAGES += \
    hdmid

# Torch
PRODUCT_PACKAGES += \
    Torch

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Bluetooth
PRODUCT_PACKAGES += \
    brcm_patchram_plus

# GPS
PRODUCT_PACKAGES += \
    gps.qcom \

# NFC
PRODUCT_PACKAGES += \
    nfc.msm8660 \
    libnfc \
    libnfc_jni \
    Nfc \
    Tag

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel \

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=1330052594
