# Boot Animation
scr_resolution := 1080x1920
du_device := $(patsubst %f,%,$(subst du_,,$(TARGET_PRODUCT)))

ifneq ($(filter harpia,$(du_device)),)
scr_resolution := 720×1280
endif

ifneq ($(filter taimen,$(du_device)),)
scr_resolution := 1440x2880
endif

ifneq ($(filter shamu marlin angler nash,$(du_device)),)
scr_resolution := 1440x2560
endif

ifneq ($(filter dumpling,$(du_device)),)
scr_resolution := 1080x2160
endif

ifneq ($(filter tenderloin,$(du_device)),)
scr_resolution := 768x1024
endif

ifneq ($(filter dragon,$(du_device)),)
scr_resolution := 1800x2560
endif

ifneq ($(wildcard vendor/du/prebuilt/common/media/$(scr_resolution).zip),)
PRODUCT_COPY_FILES += \
    vendor/du/prebuilt/common/media/$(scr_resolution).zip:system/media/bootanimation.zip
endif
