#!/usr/bin/env sh

current_volume=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -oP '\d+%' | head -1 | tr -d '%')

if [ "$current_volume" -lt 100 ]; then # do not raise it if it's above 100%
    pactl set-sink-volume @DEFAULT_SINK@ +5% && killall -SIGUSR1 i3status
fi
