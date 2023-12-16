#!/bin/bash

updates=$(checkupdates 2>/dev/null | wc -l)

integer='^[0-9]+$'
if [[ $updates =~ $integer ]]; then
    echo "PKG [$updates"]
else
    echo "PKG [-]"
fi