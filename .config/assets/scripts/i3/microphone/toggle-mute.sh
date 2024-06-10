#!/usr/bin/env sh

pactl set-sink-mute @DEFAULT_SOURCE@ toggle && killall -SIGUSR1 i3status
