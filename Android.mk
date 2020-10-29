ifneq ($(MEDIA_PREBUILT_BUILD_TYPE), source)
ifeq (,$(wildcard hardware/amlogic/omx))
LOCAL_PATH := $(call my-dir)

ifeq ($(shell test $(PLATFORM_SDK_VERSION) -ge 26 && echo OK),OK)
OMX_PATH_32 := $(TARGET_OUT_VENDOR)/lib/
OMX_PATH_64 := $(TARGET_OUT_VENDOR)/lib64/
else
OMX_PATH_32 := $(TARGET_OUT)/lib/
OMX_PATH_64 := $(TARGET_OUT)/lib64/
endif

include $(CLEAR_VARS)
LOCAL_MODULE := libstagefrighthw
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libbinder libc++ libc libcutils libdl liblog libm libui libutils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libthreadworker_alt
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libc++ libc libdl liblog libm libutils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libOmxVideo
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libOmxBase libamgralloc_ext libbinder libc++ libc libcutils \
	libdatachunkqueue_alt libdl libge2d libion liblog libm libomx_clock_utils_alt \
	libomx_framework_alt libomx_timed_task_queue_alt libomx_worker_peer_alt \
	libstagefright_foundation libsystemcontrolservice libui libutils
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libOmxAudio
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libOmxBase libbinder libc++ libc libcutils libdatachunkqueue_alt libdl \
	liblog libm libomx_framework_alt libomx_worker_peer_alt libstagefright_foundation \
	libstagefright_omx libthreadworker_alt libui libutils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libHwAudio_dcvdec
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libc++ libc libcutils libdl liblog libm libutils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libHwAudio_dtshd
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libc++ libc libcutils libdl liblog libm libutils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libOmxCore
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libOmxBase libOmxVideo libbinder libc++ libc libcutils \
	libdatachunkqueue_alt libdl libfpscalculator_alt liblog libm libomx_av_core_alt \
	libomx_clock_utils_alt libomx_framework_alt libomx_timed_task_queue_alt libomx_worker_peer_alt \
	libstagefrighthw libsystemcontrolservice libthreadworker_alt libutils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libOmxCoreSw
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libbinder libc++ libc libcutils libdl liblog libm libstagefright_omx \
	libutils
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libOmxBase
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libamgralloc_ext libbinder libc++ libc libcutils libdl liblog libm \
	libomx_clock_utils_alt libomx_framework_alt libomx_timed_task_queue_alt libomx_worker_peer_alt \
	libthreadworker_alt libui libutils
LOCAL_ALLOW_UNDEFINED_SYMBOLS := true
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libomx_worker_peer_alt
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libbinder libc++ libc libcutils libdl liblog libm libomx_framework_alt \
	libstagefright_foundation libthreadworker_alt libutils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libomx_timed_task_queue_alt
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libbinder libc++ libc libcutils libdl liblog libm libomx_clock_utils_alt \
	libthreadworker_alt libutils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libomx_framework_alt
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libamgralloc_ext libbinder libc++ libc libcutils libdl liblog libm \
	libsystemcontrolservice libutils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libomx_clock_utils_alt
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libbinder libc++ libc libcutils libdl liblog libm libutils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libomx_av_core_alt
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libbinder libc++ libc libcutils libdl liblog libm libomx_framework_alt \
	libstagefright_foundation libutils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libfpscalculator_alt
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libc++ libc libdl liblog libm libutils
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := libdatachunkqueue_alt
LOCAL_MULTILIB := both
LOCAL_MODULE_SUFFIX := .so
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_PATH_32 := $(OMX_PATH_32)
LOCAL_MODULE_PATH_64 := $(OMX_PATH_64)
LOCAL_SRC_FILES_arm := lib/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SRC_FILES_arm64 := lib64/$(LOCAL_MODULE)$(LOCAL_MODULE_SUFFIX)
LOCAL_SHARED_LIBRARIES := libc++ libc libdl liblog libm libutils
include $(BUILD_PREBUILT)

endif
endif
