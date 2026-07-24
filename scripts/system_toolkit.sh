#!/bin/bash

end=0

while [ $end -ne 1 ]
do

echo "=================================="
echo "     Linux System Toolkit"
echo "=================================="
echo "1. System Information"
echo "2. Disk Usage"
echo "3. Memory Usage"
echo "4. Running Processes"
echo "5. Check File"
echo "6. Exit"
echo "=================================="
read -p "Enter your choice: " option

system_info(){
	echo "Hostname: $(hostname)"
	echo "Current User: $(whoami)"
	echo "Home Directory: $HOME"
	echo "Current Date: $(date)"
}

check_file(){
	read -p "Enter a file name: " file
	if [ -f "$file" ]
	then
		echo "File exists."
	else
		echo "File not found."
	fi
}

case $option in

1) system_info;;
2) df -h ;;
3) free -h ;;
4) ps aux | head ;;
5) check_file ;;
6) echo "Exiting System Toolkit..."
echo "Goodbye!"
end=1
;;
*) echo "Invalid Choice, Please choose a valid option"

esac
done
