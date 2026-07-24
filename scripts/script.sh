#!/bin/bash

dir=logs
lines=0

for file in $dir/*.log
do
	echo "$file has $( wc -l < "$file" ) lines"
done
