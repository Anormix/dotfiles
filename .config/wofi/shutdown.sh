#!/bin/bash

selected_option=$(echo -e " Logout\n Reboot\n Shutdown\n Cancel" | rofi -dmenu -p "Choose an option:" -font "JetBrainsMono Nerd Font 14")

case $selected_option in
    " Logout") hyprctl dispatch exit ;;
    " Reboot") systemctl reboot ;;
    " Shutdown") systemctl poweroff ;;
    " Cancel") exit ;;
    *) exit ;;
esac

