# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit device configuration
$(call inherit-product, device/samsung/skyrocket/full_skyrocket.mk)

# Inherit some common slim stuff.
$(call inherit-product, vendor/mahdi/config/common_full_phone.mk)

# Inherit some common slim stuff.
$(call inherit-product, vendor/mahdi/config/gsm.mk)
$(call inherit-product, vendor/mahdi/configs/common.mk)

# Enhanced NFC
# $(call inherit-product, vendor/slim/config/nfc_enhanced.mk)
PRODUCT_COPY_FILES += \
    vendor/mahdi/config/permissions/com.cyanogenmod.nfc.enhanced.xml:system/etc/permissions/com.cyanogenmod.nfc.enhanced.xml

# Release name
PRODUCT_RELEASE_NAME := skyrocket

# Device identifier
PRODUCT_NAME := mahdi_skyrocket
PRODUCT_DEVICE := skyrocket
PRODUCT_BRAND := google
PRODUCT_MANUFACTURER := samsung
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-I727 TARGET_DEVICE=SGH-I727 BUILD_FINGERPRINT="samsung/SGH-I727/SGH-I727:4.1.2/JZO54K/I727UCMC1:user/release-keys" PRIVATE_BUILD_DESC="SGH-I727-user 4.1.2 JZO54K I727UCMC1 release-keys"

# Copy device specific prebuilt files.
PRODUCT_COPY_FILES += \
    vendor/mahdi/prebuilt/bootanimations/BOOTANIMATION-800x480.zip:system/media/bootanimation.zip

