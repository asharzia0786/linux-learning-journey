#!/bin/bash

read -p "Enter a file name: " name

if [ -f "$name" ]
then
	echo "File exists"
else
	echo "File not found"
fi
