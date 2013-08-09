LOCAL_PATH := $(call my-dir)

MY_LOCAL_PATH := $(LOCAL_PATH)

include $(CLEAR_VARS)

LOCAL_MODULE := lib7zip

LOCAL_C_INCLUDES := $(LOCAL_PATH)/C  $(LOCAL_PATH)/CPP $(LOCAL_PATH)/CPP/include_windows
	#$(LOCAL_PATH)/CPP/myWindows
LOCAL_SRC_FILES	:= C/7zBuf2.c C/7zCrc.c C/7zCrcOpt.c C/CpuArch.c C/7zCrcT8.c C/7zStream.c \
	C/Aes.c C/Alloc.c C/Bra.c C/Bra86.c C/BraIA64.c C/BwtSort.c C/Delta.c C/HuffEnc.c \
	C/LzFind.c C/LzFindMt.c C/Lzma2Dec.c C/Lzma2Enc.c C/LzmaDec.c C/LzmaEnc.c C/MtCoder.c \
	C/Ppmd7Dec.c C/Ppmd7Enc.c C/Ppmd8Dec.c C/Ppmd8Enc.c C/Sha256.c C/Sort.c C/Threads.c \
	C/Xz.c C/XzCrc64.c C/XzDec.c C/XzEnc.c C/XzIn.c C/Ppmd8.c  C/Ppmd7.c

#LOCAL_ARM_MODE 			:= 	thumb
#LOCAL_ARM_NEON 			:= 	false
#LOCAL_CFLAGS			:= -DCOMPRESS_MT

include $(BUILD_STATIC_LIBRARY)