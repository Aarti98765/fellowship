#!/bin/bash -x
read -p "Enter the number to know the day of week:" number
if [ $number -eq 1 ]
then
	 	echo "sunday"
elif [ $number -eq 2 ]
then
		echo "Monday"
elif [ $number -eq 3 ]
then
		echo "Tuesday"
elif [ $number -eq 4 ]
then
		echo "Wednsday"
elif [ $number -eq 5 ]
then
		echo "Thursday"
else
		echo "saturday"
fi
