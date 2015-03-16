#!/bin/bash

# disable blanking
xset s off &
xset -dpms &

# set a mouse
xsetroot -cursor_name left_ptr &

# set the X backdrop
hsetroot -cover ~/images/onering.png 

# source the terminal colors
xrdb -merge ~/.Xresources &

# Ctrl-Alt-Backspace kills the X session
setxkbmap -option terminate:ctrl_alt_bksp &
setxkbmap gb &

# notifications
dunst -c ~/.config/dunst/dunstrc &

#BATSSTAT
 while :; do /home/wux/bin/batstat.sh; sleep 300; done &

#Lock screen
exec xautolock -notify 4 -notifier '/usr/bin/notify-send  -u critical "************************\nScreen is about to lock\n************************"' -time 5 -locker 'i3lock -ui /home/wux/images/oneringlk.png' -corners +-00 -cornerdelay 4 -cornerredelay 2 &

#Pretty
compton --config .config/compton.conf &

exec dbus-launch i3
