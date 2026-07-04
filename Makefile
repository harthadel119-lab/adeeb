ARCHS = arm64
TARGET = iphone:clang:latest:14.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = TheTheebVIP
TheTheebVIP_FILES = Tweak.x KeyAuth.cpp
TheTheebVIP_CFLAGS = -fobjc-arc -I.

include $(THEOS)/makefiles/tweak.mk
