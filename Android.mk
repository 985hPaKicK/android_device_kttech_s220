ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),s220)
include $(call first-makefiles-under,$(call my-dir))
endif
