###################################################################
# Common across Platforms
###################################################################
ifeq ($(DEBUG),true)
    $(info >>>Starting common.mk)
endif


-include $(FUJINET_BUILD_TOOLS_DIR)/makefiles/fujinet-lib.mk

VERSION_FILE := src/version.txt
ifeq (,$(wildcard $(VERSION_FILE)))
	VERSION_FILE =
	VERSION_STRING =
else
	VERSION_STRING := $(file < $(VERSION_FILE))
endif

CFLAGS += -DVERSION_STRING=\"$(VERSION_STRING)\"
CFLAGS += -Osir
