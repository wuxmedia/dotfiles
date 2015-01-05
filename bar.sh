#!/bin/sh
# shell script to prepend i3status with more stuff

i3status | while :
 do
  read line
  echo "`mocp -Q %title` | {`acpi -b | awk '{print $4}' | tr -d ","`] | $line" || exit 1
 done
