#!/bin/bash

SSID="$(nmcli device wifi list | sed -n '1!p' | cut -b 9- | rofi -dmenu -p "Wifi networks" | cut -d' ' -f1)"

rofi -dmenu -p "Loading..."
printf $SSID
