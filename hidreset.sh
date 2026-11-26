#!/system/bin/sh
cd /
G=/config/usb_gadget/g1
u=$(cat $G/UDC)
echo "" > $G/UDC
for l in $G/configs/*/*; do
  case "$(readlink "$l")" in *hid.*) rm "$l";; esac
done
for f in $G/functions/hid.*; do [ -d "$f" ] && rmdir "$f"; done
echo "$u" > $G/UDC