#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
# polybar-msg cmd quit
# Otherwise you can use the nuclear option:
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
# Launch Bar
polybar example 2>&1 | tee -a /tmp/polybar1.log & disown

counter=0
bspc query -D --names | while read -r name; do
  printf 'ws-icon-%i = "%s;<insert-icon-here>"\n' $((counter++)) $name
done
