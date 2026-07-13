#!/bin/bash
echo ===== System Information =====
echo " "
read -p  "Enter your name: " name
echo "Current User:
 $name"
echo " "
echo "Current Directory: 
 $(pwd)"
echo " "
echo "Today's Date:
 $(date)"
echo " "
echo "Linux Kernel:
 name: $(uname -s)
 version: $(uname -v)"
echo " "
echo "Disk Usage:
$(df -h)"
echo " "
echo "Memory Usage:
$(free -h)"
echo " "

echo ===============================
