#!/bin/bash

if [ $# -eq 0 ]; then
	echo "Usage: monconfig <mirror|extend|internal|external>"
	exit 1
fi

if [ $1 = "mirror" ]; then
	xrandr --output "eDP-1" --mode 1366x768 --scale-from 1920x1080 --output "HDMI-1" --mode 1920x1080 --same-as "eDP-1"
elif [ $1 = "extend" ]; then
	xrandr --output "eDP-1" --mode 1366x768 --scale-from 1366x768 --output "HDMI-1" --mode 1920x1080 --right-of "eDP-1"
elif [ $1 = "internal" ]; then
	xrandr --output "eDP-1" --mode 1366x768 --scale-from 1366x768 --output "HDMI-1" --off
elif [ $1 = "external" ]; then
	xrandr --output "eDP-1" --off --output "HDMI-1" --mode 1920x1080
else
	echo "Valid options are: mirror, extend, internal, external"
	exit 1
fi

# reset the wallpaper
feh --bg-fill ~/wallpaper.png
