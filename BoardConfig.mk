USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/lge/h870/BoardConfigVendor.mk



#TARGET_KERNEL_SOURCE := kernel/lge/msm8996
#TARGET_KERNEL_CONFIG := lucye_global_com_defconfig
#TARGET_KERNEL_ARCH := arm64
#TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_DEVICE_DEFCONFIG := lucye_global_com_defconfig

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := kryo
TARGET_CPU_SMP := true

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := h870
#Try to enable gpu support
TARGET_BOARD_PLATFORM_GPU := qcom-adreno530
TARGET_HAS_NO_SELECT_BUTTON := true

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 cma=32M@0-0xffffffff androidboot.hardware=lucye androidboot.bootdevice=624000.ufshc androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02200000 --tags_offset 0x00000100

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x002800000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x002800000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x15D800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0xD0F8000000
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x04D000000
BOARD_FLASH_BLOCK_SIZE := 0x40000


#FILE
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARHET_USERIMAGES_USE_F2FS := true

TARGET_PREBUILT_KERNEL := device/lge/h870/kernel



#TWRP

TW_THEME := portrait_hdpi
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/devices/soc/6a00000.ssusb/6a00000.dwc3/gadget/lun%d/file"
TW_BRIGHTNESS_PATH := "/sys/devices/soc/900000.qcom\x2cmdss_mdp/900000.qcom\x2cmdss_mdp:qcom\x2cmdss_fb_primary/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 149
TW_SCREEN_BLANK_ON_BOOT := true
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_SUPERSU := true
# Encryption support
TW_INCLUDE_CRYPTO := true
#TARGET_HW_DISK_ENCRYPTION := true
#TARGET_KEYMASTER_WAIT_FOR_QSEE := true

#FIX LINEAGEOTA *YAY*
TW_IGNORE_MISC_WIPE_DATA := true

TW_CRYPTO_USE_SYSTEM_VOLD := qseecomd

# Debug flags
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
