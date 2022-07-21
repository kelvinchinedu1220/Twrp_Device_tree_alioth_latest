#!/system/bin/sh
# set some props, depending on device


load_INDIA()
{
    resetprop "ro.product.model" "POCO X4 PRO"
    resetprop "ro.product.odm.model" "POCO X4 PRO"
    resetprop "ro.product.system.model" "POCO X4 PRO"
    resetprop "ro.product.vendor.model" "POCO X4 PRO"
    resetprop "ro.product.system_ext.model" "POCO X4 PRO"
    resetprop "ro.product.product.model" "POCO X4 PRO"
    resetprop "ro.product.brand" "POCO"
    resetprop "ro.product.odm.brand" "POCO"
    resetprop "ro.product.system.brand" "POCO"
    resetprop "ro.product.system_ext.brand" "POCO"
    resetprop "ro.product.product.brand" "POCO"
    resetprop "ro.product.vendor.brand" "POCO"
    resetprop "ro.product.name" "veux"
    resetprop "ro.build.product" "veux"
    resetprop "ro.product.device" "veux"
    resetprop "ro.vendor.product.device" "veux"
    resetprop "ro.system.product.device" "veux"
    resetprop "ro.system_ext.product.device" "veux"
    resetprop "ro.odm.product.device" "veux"
    resetprop "ro.product.product.device" "veux"
}

load_global()
{
    resetprop "ro.product.model" "Redmi Note 11 Pro+ 5G"
    resetprop "ro.product.odm.model" "Redmi Note 11 Pro+ 5G"
    resetprop "ro.product.system.model" "Redmi Note 11 Pro+ 5G"
    resetprop "ro.product.vendor.model" "Redmi Note 11 Pro+ 5G"
    resetprop "ro.product.system_ext.model" "Redmi Note 11 Pro+ 5G"
    resetprop "ro.product.product.model" "Redmi Note 11 Pro+ 5G"
    resetprop "ro.product.brand" "Redmi"
    resetprop "ro.product.odm.brand" "Redmi"
    resetprop "ro.product.system.brand" "Redmi"
    resetprop "ro.product.system_ext.brand" "Redmi"
    resetprop "ro.product.product.brand" "Redmi"
    resetprop "ro.product.vendor.brand" "Redmi"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "INDIA")
        load_INDIA;
        ;;
    *)
        load_global;
        ;;
esac

exit 0
#
