#!/bin/bash

read -p "Enter a process name: " name

if ps -ax | grep "$name" > /dev/null
then
	pid=$(pgrep -n "$name")

	echo "Process Found!"
	ps -p "$pid" -o pid,%cpu,%mem,cmd
else
	echo "Process not running"
fi
