LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE        := ChromeModernPublic
ifeq ($(TARGET_ARCH), arm64)
LOCAL_SRC_FILES     := app/ChromeModernPublic_arm64.apk
else
LOCAL_SRC_FILES     := app/ChromeModernPublic_arm.apk
endif
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_CERTIFICATE   := PRESIGNED
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_OVERRIDES_PACKAGES := Browser Browser2
ifeq ($(TARGET_ARCH), arm64)
LOCAL_MULTILIB := 64
else
LOCAL_MULTILIB := 32
endif
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := RetroMusicPlayer
LOCAL_SRC_FILES     := app/RetroMusicPlayer.apk
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_CERTIFICATE   := PRESIGNED
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MULTILIB := both
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := Abstruct
LOCAL_SRC_FILES     := app/Abstruct.apk
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_CERTIFICATE   := PRESIGNED
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MULTILIB := both
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE        := Longshot
LOCAL_SRC_FILES     := app/Longshot.apk
LOCAL_MODULE_TAGS   := optional
LOCAL_MODULE_CLASS  := APPS
LOCAL_CERTIFICATE   := platform
LOCAL_DEX_PREOPT := false
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_MULTILIB := both
include $(BUILD_PREBUILT)
