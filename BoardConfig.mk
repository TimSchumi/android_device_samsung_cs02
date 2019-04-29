# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := hawaii
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := hawaii

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a9

# Kernel
BOARD_KERNEL_BASE := 0x81E00000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_SOURCE := kernel/samsung/cs02
TARGET_KERNEL_CONFIG := bcm21664_hawaii_ss_cs02_rev02_defconfig
KERNEL_TOOLCHAIN_PREFIX := arm-linux-androideabi-

# Partition info
TARGET_USERIMAGES_USE_EXT4 := true
#TARGET_PLATFORM_DEVICE_BASE :=
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608 # mmcblk0p5, 8192 blocks
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608 # mmcblk0p6, 8192 blocks
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1210769408 # mmcblk0p17, 1182392 blocks
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2373976064 # mmcblk0p19, 2318336 blocks
BOARD_FLASH_BLOCK_SIZE := 1024
LZMA_RAMDISK_TARGETS := recovery

# TWRP
TW_THEME := portrait_mdpi
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := BGRA_8888
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := false
TW_NO_REBOOT_BOOTLOADER := true
TW_INTERNAL_STORAGE_PATH := "/data/media"
TW_INTERNAL_STORAGE_MOUNT_POINT := "data"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel/brightness"
TW_MAX_BRIGHTNESS := 255
TW_INCLUDE_INJECTTWRP := false
TWRP_EVENT_LOGGING := false
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_USES_MMCUTILS := false
BOARD_RECOVERY_ALWAYS_WIPES := false
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TW_INCLUDE_CRYPTO := true

# jemalloc causes a lot of random crash on free()
MALLOC_SVELTE := true