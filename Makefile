include theos/makefiles/common.mk
ARCHS = armv7 arm64
TARGET=iphone:latest:5.1
TWEAK_NAME = hooksk
hooksk_FILES = Tweak.xm
hooksk_FRAMEWORKS = UIKit
include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 net"
