#!/usr/bin/env bash

# Set x root window (background) colour
xsetroot -solid "#303030" &

# Turn off caps lock
xmodmap -e "remove lock = Caps_Lock" &
# Disable caps lock
setxkbmap -option ctrl:nocaps &

# Redshift monitor color modulation
# lat:lon for London, day temp neutral (6500K)
redshift -l 51:0 -t 6500:4500 &

# Keyboard refresh rate
xset r rate 175 35 &
# Turn off system bell
xset b off &

# Configure touchpad
if egrep -iq 'touchpad' /proc/bus/input/devices; then
  synclient VertEdgeScroll=1 &
  synclient VertTwoFingerScroll=0 &
  synclient TapButton1=0 &
fi

# Hide mouse cursor when not in use
unclutter &

# Clipboard manager
clipit -n &

# mpd
(mpd && sleep 4 && mpc single off) &

