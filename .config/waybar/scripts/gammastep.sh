#!/bin/sh

if [ $(gammastep -p 2> >(grep 'Night') | wc -c) -ne 0 ]; then 
  echo ""
else
  echo "盛"
fi
