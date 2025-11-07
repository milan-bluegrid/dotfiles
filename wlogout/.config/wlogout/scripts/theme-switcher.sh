#!/bin/bash
THEME=$1
ln -sf ~/.config/wlogout/themes/$THEME.css ~/.config/wlogout/themes/current.css
notify-send "wlogout" "Switched to $THEME theme"
