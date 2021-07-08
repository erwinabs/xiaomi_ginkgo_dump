#!/system/bin/sh
if ! applypatch --check EMMC:/dev/block/bootdevice/by-name/recovery:67108864:33ebe57ce8703e524c3f4fd628d27a2d6d4e6124 > /cache/recovery/last_install_recovery_status; then
  applypatch  \
          --patch /system/recovery-from-boot.p \
          --source EMMC:/dev/block/bootdevice/by-name/boot:67108864:4d0868fbbe675769f2f7fb43f4fafcb91bc1589b \
          --target EMMC:/dev/block/bootdevice/by-name/recovery:67108864:33ebe57ce8703e524c3f4fd628d27a2d6d4e6124 >> /cache/recovery/last_install_recovery_status && \
      echo "Installing new recovery image: succeeded" >> /cache/recovery/last_install_recovery_status || \
      echo "Installing new recovery image: failed" >> /cache/recovery/last_install_recovery_status
else
  echo "Recovery image already installed" >> /cache/recovery/last_install_recovery_status
fi
