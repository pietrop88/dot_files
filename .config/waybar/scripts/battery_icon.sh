#!/bin/sh

VAL=$(cat /sys/class/power_supply/BAT0/capacity)
if [ $VAL -gt 90 ]; then 
  echo ""
elif [ $VAL -gt 80 ]; then
  echo ""
elif [ $VAL -gt 70 ]; then
  echo ""
elif [ $VAL -gt 60 ]; then
  echo ""
elif [ $VAL -gt 50 ]; then
  echo ""
elif [ $VAL -gt 40 ]; then
  echo ""
elif [ $VAL -gt 30 ]; then
  echo ""
elif [ $VAL -gt 20]; then
  echo ""
elif [ $VAL -gt 10]; then
  echo ""
else 
  echo ""
fi
