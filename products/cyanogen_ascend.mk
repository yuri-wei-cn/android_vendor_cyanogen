# Inherit AOSP device configuration for ascend.
$(call inherit-product, device/huawei/ascend/device_ascend.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common.mk)

# Include GSM stuff
#$(call inherit-product, vendor/cyanogen/products/gsm.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_ascend
PRODUCT_BRAND := Huawei
PRODUCT_DEVICE := ascend
PRODUCT_MODEL := M860
PRODUCT_MANUFACTURER := Huawei
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=huawei_ascend BUILD_ID=FRG83 BUILD_DISPLAY_ID=FRG83 BUILD_FINGERPRINT=huawei/ascend/msm7625/M860:2.2.1/FRG83/02162011:user/release-keys

#PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-ascend.map

#
# Set ro.modversion
#
ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6-$(shell date +%m%d%Y)-NIGHTLY-Ascend
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6.1.1-$(shell date +%m%d%Y)-Ascend
endif

#
# Copy legend specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    vendor/cyanogen/prebuilt/mdpi/media/bootanimation.zip:system/media/bootanimation.zip
 
