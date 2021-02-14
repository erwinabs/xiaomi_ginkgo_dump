#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:b4bd6fd5b22120078fb1c6d644572d2a40d1954f; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:ddf418415357e86e05c1bbc8adeb5f35ed5cc3c0 EMMC:/dev/block/bootdevice/by-name/recovery b4bd6fd5b22120078fb1c6d644572d2a40d1954f 67108864 ddf418415357e86e05c1bbc8adeb5f35ed5cc3c0:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
