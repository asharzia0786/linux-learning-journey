#!/bin/bash

if [ -f "$1" ]
then
	error=$(grep -c "ERROR" "$1")
	warning=$(grep -c "WARNING" "$1")
	info=$(grep -c "INFO" "$1")
	echo "-------Summary-------"
	echo "Error lines: "$error
	echo "Warning lines: "$warning
	echo "Info lines: "$info
	echo " "
elif [ "$1" ==  "" ]
then
	echo "Error: file not specified"
	echo "Usage: ./log_checker.sh <logfile.log>"
else
	echo "File not found"
	exit 1
fi

