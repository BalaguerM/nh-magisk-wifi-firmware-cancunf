#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
G=${G:-/config/usb_gadget/g1}
MAXWAIT=${MAXWAIT:-120}

# wait for init to create the gadget functions
i=0
while [ ! -d "$G/functions/hid.gs0" ] && [ "$i" -lt "$MAXWAIT" ]; do
  sleep 1; i=$((i+1))
done

free_hid() {
  for f in "$G"/functions/hid.*; do
    [ -d "$f" ] && rmdir "$f" 2>/dev/null
  done
}

free_hid

# if a hid function is still there it is linked into a config: unbind, unlink, retry, rebind
if ls -d "$G"/functions/hid.* >/dev/null 2>&1; then
  u=$(cat "$G/UDC")
  echo "" > "$G/UDC"
  for l in "$G"/configs/*/*; do
    case "$(readlink "$l")" in *hid.*) rm "$l" 2>/dev/null;; esac
  done
  free_hid
  echo "$u" > "$G/UDC"
fi
exit 0