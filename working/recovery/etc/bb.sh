#!/sbin/sh
DELNUM=0

for f in $(busybox find /system/xbin -type l); do
  rsl=$(busybox readlink $f)
  if echo "$rsl" | busybox grep -q busybox; then
    busybox rm $f
    DELNUM=`busybox expr $DELNUM + 1`
  fi
done

for i in $(busybox --list); do
    /tmp/busybox ln -sf busybox "/system/xbin/$i"
done
