#!/usr/bin/env sh

pactl set-sink-volume @DEFAULT_SINK@ -5% && killall -SIGUSR1 i3status
