#!/bin/bash -x
no=0;
firstNumber=0
lastNumber=101
echo "Think the number between 1 to 100"
while [[ $choice -ne 3 ]] 
do
		mid=$(( ($firstNumber+$lastNumber)/2 ))
		echo "Is your number is $mid"
		read -p "1)Number is greater than  2)Number is less than  3)Magic Number" choice
		case $choice in
		1)
				echo "If number greater than $mid"
            firstNumber=$mid
				lastNumber=$lastNumber
				;;
		2)
				echo "If number less than $mid"
				lastNumber=$mid
				firstNumber=$firstNumber
				;;
		3)
				echo $mid;
				;;
		esac
done
