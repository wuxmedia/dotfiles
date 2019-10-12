#!/bin/sh
# shell script to prepend i3status with more stuff
# output_format = none in .i3status.conf

i3status | while :
 do
  read line
  echo "🌎 NY:$(TZ="America/New_York" date +%R) 🏠 $(/home/wux/bin/ip.sh)  $(~/bin/./bat.sh) 🌡  $(acpi -t | cut -d " " -f4| cut -d "." -f -1 )°C  $line" || exit 1
 done
 #looks like UTFs got messed up, oh well 
