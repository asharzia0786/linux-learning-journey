#!/bin/bash

echo "========== Network Report =========="

echo "Hostname: "$(hostname)

echo "Current User: "$(whoami)

echo "IP Address: "
hostname -I

echo "Default Gateway: "
ip route | grep default

echo "Internet Connection: "
if ping -c 1 8.8.8.8 > /dev/null
then
	echo "Successfull"
else
	echo "Failed"
fi

echo "Listening TCP Ports: "
ss -tln | tail -n +2 | wc -l

echo "Current Date: "$(date)

echo "===================================="
