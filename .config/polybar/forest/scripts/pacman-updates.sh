#!/bin/bash

updates=$(checkupdates | wc -l)

if [ "$updates" -ne "0" ]; then
    echo "$updates" "updates"
else
    echo "None"
fi
