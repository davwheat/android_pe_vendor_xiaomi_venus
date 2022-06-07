# Adds files for Qcom diag driver

# system_ext
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/system_ext/lib/libDiagService.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/libDiagService.so \
    $(LOCAL_PATH)/proprietary/system_ext/lib/vendor.qti.diaghal@1.0:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib/vendor.qti.diaghal@1.0.so \
    $(LOCAL_PATH)/proprietary/system_ext/lib64/libDiagService.so:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/libDiagService.so \
    $(LOCAL_PATH)/proprietary/system_ext/lib64/vendor.qti.diaghal@1.0:$(TARGET_COPY_OUT_SYSTEM_EXT)/lib64/vendor.qti.diaghal@1.0.so

# vendor
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/proprietary/vendor/bin/diag-router:$(TARGET_COPY_OUT_VENDOR)/bin/diag-router \
    $(LOCAL_PATH)/proprietary/vendor/etc/init/diagcommand.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/diagcommand.rc \
    $(LOCAL_PATH)/proprietary/vendor/etc/init/init.qcom.usb.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/init.qcom.usb.rc \
    $(LOCAL_PATH)/proprietary/vendor/etc/init/vendor.qti.diag.rc:$(TARGET_COPY_OUT_VENDOR)/etc/init/vendor.qti.diag.rc \
    $(LOCAL_PATH)/proprietary/vendor/lib/vendor.qti.diaghal@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib/vendor.qti.diaghal@1.0.so \
    $(LOCAL_PATH)/proprietary/vendor/lib64/vendor.qti.diaghal@1.0.so:$(TARGET_COPY_OUT_VENDOR)/lib64/vendor.qti.diaghal@1.0.so
