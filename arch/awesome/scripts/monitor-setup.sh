#!/bin/bash
xrandr --output DP-1 --primary --mode 3840x2160 --pos 0x0 --rate 60 \
  --output DP-2 --mode 2560x1440 --pos -2560x350 --rate 60 \
  --output HDMI-1 --mode 3840x2160 --pos -6400x0 --rate 60
