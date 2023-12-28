#!/bin/sh
WIFI='wlp59s0'
USB='enp0s20f0u2'
IP=8.8.8.8

if ping -c 1 $IP > /dev/null 2>&1; then
  iface=$(ip route get $IP | sed -n 's/.*dev \([^\ ]*\).*/\1/p')
  if [ "$iface" = "$WIFI" ]; then 
    iface='WIFI' 
  elif [ "$iface" = "$USB" ]; then 
    iface='USB' 
  fi
  echo "ONLINE [$iface]"
else
  echo 'OFFLINE'	
fi

