#!/bin/bash
(( e = `cat /sys/class/backlight/intel_backlight/brightness` +900 )) ; echo $e > /sys/class/backlight/intel_backlight/brightness ;notify-send "$(bc -l <<<"scale=2; "$e"/$(cat /sys/class/backlight/intel_backlight/max_brightness)*100" | cut -d "." -f1)"
