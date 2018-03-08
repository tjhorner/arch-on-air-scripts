#!/bin/bash

sleep 1

export DISPLAY=":0"

monitor=`cat /sys/class/drm/card0-HDMI-A-1/status`

if [ "$monitor" == "connected" ]; then
	echo "connected"
	/home/tj/scripts/monconfig.sh mirror
else
	echo "disconnected"
	/home/tj/scripts/monconfig.sh internal
fi
