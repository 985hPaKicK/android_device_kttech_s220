COMMON_GLOBAL_CFLAGS += -DS220 -DNEED_UMS_ENABLE
TARGET_SPECIFIC_HEADER_PATH := device/kttech/s220/include

#BOARD_HAVE_FM_RADIO := true
#BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

USE_CAMERA_STUB := false

# inherit from the proprietary version
-include vendor/kttech/s220/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true

TARGET_BOOTLOADER_BOARD_NAME := s220
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# Init
TARGET_PROVIDES_INIT_RC := true

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Camera
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB
BOARD_NEEDS_MEMORYHEAPPMEM := true

## This is evil. The mt9m114 (FFC) data inside the liboemcamera blob is in the .bss section,
## and inaccessible if PIE is enabled
TARGET_DISABLE_ARM_PIE := true

# Audio
COMMON_GLOBAL_CFLAGS += -DQCOM_ACDB_ENABLED
TARGET_USES_ION_AUDIO := true

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true

# Vibrator
BOARD_HAS_VIBRATOR_IMPLEMENTATION := ../../device/kttech/s220/vibrator/vibrator.c

# Graphics
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK -DQCOM_ROTATOR_KERNEL_FORMATS
USE_OPENGL_RENDERER := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_GENLOCK := true
TARGET_USES_ION := true
BOARD_USES_QCOM_LIBS := true
BOARD_EGL_CFG := device/kttech/s220/configs/egl.cfg
TARGET_USES_OVERLAY := true
TARGET_NO_HW_VSYNC := true
TARGET_HAVE_BYPASS  := true
TARGET_NO_BYPASS_CROPPING := true

TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true
TARGET_USE_SCORPION_PLD_SET := true
TARGET_SCORPION_BIONIC_PLDOFFS := 6
TARGET_SCORPION_BIONIC_PLDSIZE := 128

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom no_console_suspend=1
BOARD_KERNEL_BASE := 0x40200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x41500000
BOARD_KERNEL_PAGESIZE := 2048

TARGET_PREBUILT_KERNEL := device/kttech/s220/prebuilt/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE := 0xA00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0xA00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 361234432
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1548140544
BOARD_FLASH_BLOCK_SIZE := 131072

#BOARD_HAS_NO_SELECT_BUTTON := true
#BOARD_TOUCH_RECOVERY := true

# Wifi related defines
WIFI_BAND                        := 802_11_ABG
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER	 := WEXT
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
WIFI_DRIVER_FW_PATH_STA          := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P          := "/vendor/firmware/fw_bcmdhd_p2p.bin"

# Wifi
WIFI_DRIVER_MODULE_NAME          := wlan
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/vendor/firmware/fw_bcmdhd.bin nvram_path=/system/etc/wifi/bcmdhd.cal"

#BOARD_LEGACY_NL80211_STA_EVENTS := true

# GPS
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := qcom
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 33
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := false

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/kttech/s220/recovery/graphics.c
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/kttech/s220/recovery/recovery_keys.c
BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_hsusb/gadget/lun%d/file"
TARGET_USERIMAGES_USE_EXT4 := true
