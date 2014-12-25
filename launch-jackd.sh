#!/bin/sh

cards=`cat /proc/asound/cards`;

case "$cards" in 
  *"Native Instruments Traktor Audio 2 MK2"*)
    /usr/bin/jackd -R -P 95 -d alsa -d hw:MK2 -r 44100 -p 256
    ;;
  *UDJ6*)
    # ESI UDJ6
    /usr/bin/jackd -R -P 95 -d alsa -d hw:UDJ6 -r 44100 -p 256
    ;;
esac
