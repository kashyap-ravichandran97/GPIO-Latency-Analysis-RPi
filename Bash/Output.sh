#!/bin/bash

echo 18 > /sys/class/gpio/export
sleep 0.5
echo "out" > /sys/class/gpio/gpio18/direction
COUNTER=0
while [ $COUNTER -lt 100000 ]; do
	echo 1 > /sys/class/gpio/gpio18/value
	sleep 0.005
	echo 0 > /sys/class/gpio/gpio18/value
	sleep 0.005
	#let COUNTER=COUNTER+1
done
echo 18 > /sys/class/gpio/unexport