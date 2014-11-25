#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:7057408:2dd8160a99cf6ff38f0b01422e20ea8b1f9e9477; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:6500352:8358645f8d12a9bc056c81b19ad013cd830b284c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 2dd8160a99cf6ff38f0b01422e20ea8b1f9e9477 7057408 8358645f8d12a9bc056c81b19ad013cd830b284c:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
