# Android fstab file.
#<src>                                         <mnt_point>  <type>  <mnt_flags and options>  <fs_mgr_flags>
# The filesystem that contains the filesystem checker binary (typically /system) cannot
# specify MF_CHECK, and must come before any filesystems that do specify MF_CHECK

/dev/block/platform/msm_sdcc.1/by-name/system       /system         f2fs    ro,noatime,discard,nodiratime,inline_xattr,errors=recover,barrier=1                                            wait
/dev/block/platform/msm_sdcc.1/by-name/cache        /cache          f2fs    noatime,nodiratime,inline_xattr,nosuid,nodev,barrier=1,data=ordered,errors=recover                             wait,check
/dev/block/platform/msm_sdcc.1/by-name/userdata     /data           f2fs    noatime,discard,nodiratime,inline_xattr,nosuid,nodev,barrier=1,data=ordered,noauto_da_alloc,errors=recover     wait,check,encryptable=/dev/block/platform/msm_sdcc.1/by-name/metadata
/dev/block/platform/msm_sdcc.1/by-name/persist      /persist        ext4    nosuid,nodev,barrier=1,data=ordered,nodelalloc                  wait
/dev/block/platform/msm_sdcc.1/by-name/modem        /firmware       vfat    ro,uid=1000,gid=1000,dmask=227,fmask=337,context=u:object_r:radio_efs_file:s0                        wait
/dev/block/platform/msm_sdcc.1/by-name/boot         /boot           emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/recovery     /recovery       emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/misc         /misc           emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/modem        /radio          emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/sbl1         /sbl1           emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/sbl2         /sbl2           emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/sbl3         /sbl3           emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/tz           /tz             emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/rpm          /rpm            emmc    defaults                                                        defaults
/dev/block/platform/msm_sdcc.1/by-name/aboot        /aboot          emmc    defaults                                                        defaults
