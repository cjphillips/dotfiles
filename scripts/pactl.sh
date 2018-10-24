#!/bin/bash

VOLUME=$1
MUTING=0

while getopts "mv" opt; do
    case ${opt} in
        m) MUTING=1
        ;;
        v) shift $((OPTIND -1))
           VOLUME=$1
        ;;
        \?) echo "Usage: pactl.sh [-m] [-v <VOL>]" && exit 1;;
    esac
done

for SINK in `pactl list sinks | grep Sink | cut -b7-`; do
    if [ $MUTING -eq 1 ]; then
        pactl set-sink-mute $SINK toggle
    else
        pactl set-sink-volume $SINK $VOLUME
    fi
done
