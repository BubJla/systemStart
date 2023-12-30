#!/bin/bash

status=$(pactl list sinks | grep 'Mute:' | awk '{print $2}')

if [ "$status" == "yes" ]; then
    pactl set-sink-mute @DEFAULT_SINK@ 0
else
    pactl set-sink-mute @DEFAULT_SINK@ 1
fi
