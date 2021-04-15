#!/bin/sh

if [ $(bluetoothctl info | grep Alias | wc -c) -ne 0 ]; then 
  echo " $(bluetoothctl info | grep Alias | cut -d ' ' -f 2-)"
else
  echo ""
fi