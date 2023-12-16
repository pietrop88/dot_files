#!/bin/sh

if [ $(bluetoothctl info | grep Alias | wc -c) -ne 0 ]; then 
  echo "BT [$(bluetoothctl info | grep Alias | cut -d ' ' -f 2-)]"
else
  echo "BT [NONE]"
fi
