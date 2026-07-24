#1/bin/bash

cont=0

while [ $cont -ne 1 ]
do

echo "Select one of the following (1-4): "
echo "1. Date"
echo "2. User"
echo "3. Directory"
echo "4. Exit"

read choice

case $choice in

1) echo $(date);;
2) echo $(whoami);;
3) echo $(pwd);;
4) cont=1;;
*) echo "Invalid Entry"

esac

done
