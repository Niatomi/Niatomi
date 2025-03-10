#!/bin/sh

export MONITORS_AMMOUNT=$(xrandr --query | grep -w connected | wc -l | tail -1);
echo $MONITORS_AMMOUNT
if [ "$MONITORS_AMMOUNT" -eq "3" ]; then
    xrandr --output DP-1-0 --off --output DP-1-1 --off --output HDMI-1-0 --mode 1680x1050 --pos 240x0 --rotate normal --output DP-1-2 --mode 1680x1050 --pos 1920x71 --rotate left --output DP-1-3 --off --output eDP --primary --mode 1920x1080 --pos 0x1050 --rotate normal
fi;


