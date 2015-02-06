#!/bin/sh
# shell script to prepend i3status with more stuff

i3status | while :
 do
  read line
  echo "$(mocp -Q %title) | $(~/bin/./bat.sh)] | $line" || exit 1
 done
