#!/usr/bin/env bash

name=main
bot=bottom

pkill polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
	MONITOR=eDP1 polybar --reload ${name}&
	MONITOR=eDP1 polybar --reload ${bot}&
else
	polybar --reload ${name}&
	polybar --reload ${bot}&
fi
