#!/bin/bash

updates=$(checkupdates | wc -l)

integer='^[0-9]+$'
if [[ $yournumber =~ $integer ]] || [ "$updates" -ne "0" ]; then
    echo "$updates" "updates"
else
    echo "None"
fi
