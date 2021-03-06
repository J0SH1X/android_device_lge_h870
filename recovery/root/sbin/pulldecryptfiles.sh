#!/sbin/sh

# This pulls the files out of /vendor that are needed for decrypt
# This allows us to decrypt the device in recovery and still be
# able to unmount /vendor when we are done.

umount /vendor
rm /vendor
mkdir -p /vendor
mount -t ext4 -o ro /dev/block/bootdevice/by-name/system /system

cp /system/vendor/lib64/libQSEEComAPI.so /sbin/libQSEEComAPI.so
cp /system/vendor/lib64/hw/keystore.msm8996.so /sbin/keystore.msm8996.so
cp /system/vendor/lib64/libdrmfs.so /sbin/libdrmfs.so
cp /system/vendor/lib64/libdrmtime.so /sbin/libdrmtime.so
cp /system/vendor/lib64/librpmb.so /sbin/librpmb.so
cp /system/vendor/lib64/libssd.so /sbin/libssd.so
cp /system/vendor/lib64/libdiag.so /sbin/libdiag.so
cp /system/vendor/lib64/libkmcrypto.so /sbin/libkmcrypto.so
cp /system/vendor/lib64/hw/gatekeeper.msm8996.so /sbin/gatekeeper.msm8996.so

umount /system

mkdir -p /vendor/lib64/hw
cp /sbin/keystore.msm8996.so /vendor/lib64/hw/keystore.msm8996.so
cp /sbin/gatekeeper.msm8996.so /vendor/lib64/hw/gatekeeper.msm8996.so
cp /sbin/bootctrl.msm8996.so /vendor/lib64/hw/bootctrl.msm8996.so
