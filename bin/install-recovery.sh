#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9654272:8b376a3ac79f917ff4d10378a06ed715de872426; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8792064:90f0b4be0f71fbbaf196a46abc2f020bf2ce43cf EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 8b376a3ac79f917ff4d10378a06ed715de872426 9654272 90f0b4be0f71fbbaf196a46abc2f020bf2ce43cf:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
