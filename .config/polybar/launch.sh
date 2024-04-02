#!/bin/bash

pkill polybar

if type "xrandr"; then
	for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
		MONITOR=$m polybar main -reload &
	done
else
	polybar main -reload &
fi
