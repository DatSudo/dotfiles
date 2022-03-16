#!/usr/bin/env bash

name=main

pkill polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
	MONITOR=eDP1 polybar --reload ${name}&
else
	polybar --reload ${name}&
fi
