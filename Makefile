include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = NightToggle
NightToggle_FILES = Switch.xm
NightToggle_FRAMEWORKS = UIKit
NightToggle_LIBRARIES = flipswitch
NightToggle_INSTALL_PATH = /Library/Switches

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 SpringBoard"