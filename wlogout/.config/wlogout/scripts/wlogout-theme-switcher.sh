#!/bin/bash

# Directory containing theme files
THEME_DIR="$HOME/.config/wlogout/themes"

# Let rofi show all theme files, strip extensions
THEME=$(ls "$THEME_DIR"/*.css | xargs -n1 basename | sed 's/.css//' | grep -v current | rofi -dmenu -p "Select wlogout theme:")

# If a theme was chosen
if [ -n "$THEME" ]; then
    ln -sf "$THEME_DIR/$THEME.css" "$THEME_DIR/current.css"
    notify-send "wlogout" "Switched to theme: $THEME"
else
    notify-send "wlogout" "No theme selected"
fi
