#!/bin/sh

export MONITORS_AMMOUNT=$(xrandr --query | grep -w connected | wc -l | tail -1);
echo $MONITORS_AMMOUNT
if [ "$MONITORS_AMMOUNT" -eq "3" ]; then
    xrandr --output eDP --mode 1920x1080 --pos 1680x0 --rotate normal --output DP-1-0 --off --output DP-1-1 --off --output HDMI-1-0 --primary --mode 1680x1050 --pos 0x30 --rotate normal --output DP-1-2 --mode 1680x1050 --pos 3600x30 --rotate normal --output DP-1-3 --off

fi;


