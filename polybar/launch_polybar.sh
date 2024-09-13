#!/bin/bash

if type "xrandr" > /dev/null 2>&1; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --config~/dotfiles/polybar/config.ini --reload toph &
  done
else
  polybar --config=~/dotfiles/polybar/config.ini --reload toph &
fi
