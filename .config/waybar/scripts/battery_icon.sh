#!/bin/sh

VAL=$(cat /sys/class/power_supply/BAT0/status)
if [ $VAL = "Charging" ] || [ $VAL = "Full" ]; then 
  echo ""
else
  echo ""
fi
