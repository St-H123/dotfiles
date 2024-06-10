#!/usr/bin/env sh

pactl set-sink-mute @DEFAULT_SINK@ toggle && killall -SIGUSR1 i3status
