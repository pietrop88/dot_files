#!/bin/sh
st=$(ip route get 8.8.8.8)
if [ $? -eq 0 ]; then
  iface=$(echo $st | sed -n 's/.*dev \([^\ ]*\).*/\1/p')
  echo "ONLINE [$iface]"
else
  echo 'OFFLINE'	
fi

