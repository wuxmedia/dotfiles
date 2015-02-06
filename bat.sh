#!/bin/bash

# bat.sh
# Queries /sys/class/power_supply/BATn/ things
# and makes it a pretty ascii output.

if [ -d /sys/class/power_supply/BAT0/ ]
then 
DIR=/sys/class/power_supply/BAT0/
else
DIR=/sys/class/power_supply/BAT1
fi

CAP=$(cat $DIR/capacity)
STATE=$(cat $DIR/status)
# Charging or What??
if [[ $STATE  == D* ]]
then ST="-"
else ST="+"
fi

if [[ $CAP == 100 ]]
then ST=""
fi
	echo "{$CAP$ST]"
