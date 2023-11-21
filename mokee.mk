
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit device configuration
$(call inherit-product, device/generic/emulatorx86/device.mk)

# Inherit some common MK stuff (full)
$(call inherit-product, vendor/mk/config/common_mini.mk)
PRODUCT_NAME := mk_emulatorx86
PRODUCT_DEVICE := emulatorx86
PRODUCT_BRAND := LineageOS
PRODUCT_MODEL := Full LineageOS on x86 Emulator

bacon: droid
