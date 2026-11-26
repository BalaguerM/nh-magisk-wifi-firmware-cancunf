#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
(
  G=/config/usb_gadget/g1
  i=0
  while [ ! -d "$G/functions/hid.gs0" ] && [ "$i" -lt 120 ]; do
    sleep 1; i=$((i+1))
  done
  rmdir "$G/functions/hid.gs0" 2>/dev/null
) >/dev/null 2>&1 &