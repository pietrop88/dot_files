#!/bin/sh

if [ $(redshift -p 2> /dev/null | grep 'Period: Night' | cut -d ' ' -f 2- | wc -c) -ne 0 ]; then 
  echo ""
else
  echo ""
fi
