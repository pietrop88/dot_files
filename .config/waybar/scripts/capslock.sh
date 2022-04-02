#!/bin/sh

if [ $(cat /sys/class/leds/input3::capslock/brightness) -eq 0 ]; then 
  echo ""
else
  echo ""
fi
