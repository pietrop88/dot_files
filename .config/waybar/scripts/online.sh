#!/bin/sh
WIFI='wlp59s0'
USB='enp0s20f0u2'

st=$(ip route get 8.8.8.8)
if [ $? -eq 0 ]; then
  iface=$(echo $st | sed -n 's/.*dev \([^\ ]*\).*/\1/p')
  if [ "$iface" = "$WIFI" ]; then 
    iface='WIFI' 
  elif [ "$iface" = "$USB" ]; then 
    iface='USB' 
  fi
  echo "ONLINE [$iface]"
else
  echo 'OFFLINE'	
fi

