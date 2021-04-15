#!/bin/bash

updates=$(xbps-install -Sun | cut -d' ' -f2 | sort | uniq -c | xargs)

if [ -z "$updates" ]; then
    echo "None"
else
    echo "$updates""s"
fi
