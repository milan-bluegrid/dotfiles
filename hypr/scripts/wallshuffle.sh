#!/bin/bash

# Folder with wallpapers
WALLPAPERS="$HOME/Pictures/Wallpapers"

# Interval between changes (seconds)
INTERVAL=600   # 10 minutes

# Initialize swww if not running
pgrep -x swww-daemon >/dev/null || swww-daemon &

while true; do
    FILE=$(find "$WALLPAPERS" -type f | shuf -n1)
    swww img "$FILE" --transition-type wipe --transition-duration 3 --transition-fps 60
    sleep $INTERVAL
done
