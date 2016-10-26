#!/usr/bin/env bash

# Set x root window (background) colour
xsetroot -solid "#303030" &

# Turn off caps lock
xmodmap -e "remove lock = Caps_Lock" &
# Disable caps lock
setxkbmap -option ctrl:nocaps &

# Keyboard refresh rate
xset r rate 175 35 &
# Turn off system bell
xset b off &
# Mouse config
xset m 3/2 4 &

# Configure touchpad
if egrep -iq 'touchpad' /proc/bus/input/devices; then
  synclient VertEdgeScroll=1 &
  synclient VertTwoFingerScroll=1 &
  synclient HorizTwoFingerScroll=1 &
  synclient TapButton1=1 &
  synclient MinSpeed=1.0
fi

# Hide mouse cursor when not in use
pidof unclutter >& /dev/null
if [ $? -ne 0 ]; then
  unclutter &
fi

# Clipboard manager
pidof clipit >& /dev/null
if [ $? -ne 0 ]; then
  clipit -n &
fi

# mpd
pidof mpd >& /dev/null
if [ $? -ne 0 ]; then
  (mpd && sleep 4 && mpc single off && mpc consume on) &
fi
