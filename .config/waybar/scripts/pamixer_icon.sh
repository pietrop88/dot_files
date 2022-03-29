#!/bin/bash

if [ "$(pamixer --get-mute)" = true ]; then
    echo "ﱝ"
else
    echo "墳"
fi