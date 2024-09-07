#!/bin/sh
IP='voron0.local'
PORT=7125
INITSTR='VORON0'

if ping -c 1 $IP > /dev/null 2>&1; then
  tmp=$(curl -s "$IP:$PORT/printer/objects/query?print_stats&virtual_sdcard")
  st=$(echo $tmp | jq -r '.result.status.print_stats.state')
  if [ "$st" = "printing" ]; then
    pr=$(echo $tmp | jq -r '.result.status.virtual_sdcard.progress | tonumber | .*100 | floor') 
    echo "$INITSTR [$st - $pr%]"
  else
    echo "$INITSTR [$st]"
  fi
else
  echo "$INITSTR [OFFLINE]"	
fi

