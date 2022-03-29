#!/bin/bash

# Terminate already running instances
killall -q gammastep

# Wait until the processes have been shut down
while pgrep -u $UID -x gammastep >/dev/null; do sleep 1; done

# Launch
gammastep & 

echo "Gammastep launched..."
