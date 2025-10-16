#!/bin/bash

# Menu Options
options="Shutdown\nReboot\nLockScreen\nSuspend\nHibernate\nCancel"

# Show menu with wofi
choice=$(echo -e "$options" | wofi --dmenu -p "Power")

case "$choice" in
    Shutdown)
     systemctl poweroff
      ;;
    Reboot)
      systemctl reboot
      ;;
    LockScreen)
      hyprlock
      ;;
    Suspend)
      systemctl suspend
      ;;
    Hibernate)
      systemctl hibernate
      ;;
    *)
      exit 0
      ;;
esac
