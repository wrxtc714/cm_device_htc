# Inherit AOSP device configuration for inc.
$(call inherit-product, device/htc/shooter/full_shooter.mk)

# Inherit some common evervolv stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cm_shooter
PRODUCT_BRAND := sprint
PRODUCT_DEVICE := shooter
PRODUCT_MODEL := PG86100
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_shooter BUILD_ID=GRJ22 BUILD_FINGERPRINT=sprint/htc_shooter/shooter:2.3.4/GRJ22/130920.2:user/release-keys PRIVATE_BUILD_DESC="2.08.651.2 CL130920 release-keys"

# Set up the product codename, build version & MOTD.
PRODUCT_CODENAME := e3d
PRODUCT_VERSION_DEVICE_SPECIFIC := alpha5

PRODUCT_MOTD :="Welcome to ics-deck"

#PRODUCT_PACKAGES += \
#    Camera

# Copy compatible prebuilt files
#PRODUCT_COPY_FILES +=  \
#    vendor/ev/prebuilt/qhd/media/bootanimation.zip:system/media/bootanimation.zip

# qHD overlay
PRODUCT_PACKAGE_OVERLAYS += \
    vendor/cm/overlay/qhd

# USB
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage

#ADDITIONAL_DEFAULT_PROPERTIES += persist.sys.usb.config=mtp,adb
