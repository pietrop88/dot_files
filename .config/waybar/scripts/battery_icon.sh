#!/bin/sh

VAL=$(cat /sys/class/power_supply/BAT0/status)
if [ $VAL = "Charging" ]; then 
  echo ""
else
  echo ""
fi
