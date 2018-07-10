#!/bin/bash

SINK_NUM=`pactl list sinks|grep -C 2 RUNNING | grep "Sink #" | sed 's/Sink #//g'`

echo SINK $SINK_NUM

if [ "$SINK_NUM" = "" ]
then
	echo "No active sink"
	exit 9
fi

if [ "$1" = "up" ]
then
	echo "up"
    pactl set-sink-volume $SINK_NUM +5% #increase sound volume
elif [ "$1" = "mute" ]
then
	echo "mute"
    pactl set-sink-mute $SINK_NUM  toggle
else
	echo "down"
    pactl set-sink-volume $SINK_NUM -5% #increase sound volume
fi

