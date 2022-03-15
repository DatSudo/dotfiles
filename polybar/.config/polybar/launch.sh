#!/usr/bin/env bash

name=main
bot=bottom

pkill polybar
# killall -q polybar

while pgrep -x polybar >/dev/null; do sleep 1; done

if type "xrandr"; then
	sleep 1 && MONITOR=eDP1 polybar --reload ${name}&
	sleep 1 && MONITOR=eDP1 polybar --reload ${bot}&
else
	sleep 1 && polybar --reload ${name}&
	sleep 1 && polybar --reload ${bot}&
fi
