#!/usr/bin/env bash

# Set x root window (background) colour
xsetroot -solid "#303030" &

# Turn off caps lock
xmodmap -e "remove lock = Caps_Lock" &
# Disable caps lock
setxkbmap -option ctrl:nocaps &

# Redshift monitor color modulation
# lat:lon for London, day temp neutral (6500K)
pidof redshift >& /dev/null
if [ $? -ne 0 ]; then
  redshift -l 51:0 -t 6500:4500 &
fi

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
  synclient TapButton1=0 &
  synclient MinSpeed=3.5
  synclient MinSpeed=2.5
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

# don't activate screensaver
xset s off
# don't blank the video device
xset s noblank
# disable DPMS (Energy Star) features.
xset -dpms

# mpd
pidof mpd >& /dev/null
if [ $? -ne 0 ]; then
  (mpd && sleep 4 && mpc single off && mpc consume on) &
fi
# mpd librefm scrobbling
pidof mpdscribble >& /dev/null
if [ $? -ne 0 ]; then
  (bash -c "cd ~ && mpdscribble") &
fi
