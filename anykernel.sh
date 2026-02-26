### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=NovaKernel
kernel.revision=5.4
kernel.made=Omar @ Samsung Galaxy A73 | Official™
anykernel3.made=osm0sis @ xda-developers
kernel.compiler=Android clang 21.0.0
message.word=Thank you for installing NovaKernel
do.devicecheck=1
do.cleanup=1
device.name1=a73xq
device.name2=m52xq
device.name3=a52sxq
supported.versions=12-16
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install
# boot shell variables
BLOCK=/dev/block/bootdevice/by-name/boot;
IS_SLOT_DEVICE=auto;
NO_BLOCK_DISPLAY=1;

ui_print "-Flashing boot.img"
write_raw_image boot.img "$BLOCK"

ui_print "-Flashing vendor_boot.img"
write_raw_image vendor_boot.img "/dev/block/bootdevice/by-name/vendor_boot"

ui_print "-Flashing dtbo.img"
write_raw_image dtbo.img "/dev/block/bootdevice/by-name/dtbo"

ui_print""
ui_print "Flashing completed."
ui_print ""

exit 0
