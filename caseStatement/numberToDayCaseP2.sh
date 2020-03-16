#!/bin/bash -x
read -p "Enter number to know the day in word:" number
case $number in
		1)
				echo "sunday"
				;;
		2)
				echo "monday"
				;;
		3)
				echo "tuesday"
				;;
		4)
				echo "wednsday"
				;;
		5)
				echo "thursday"
				;;
		6)
				echo "friday"
				;;
		7)
				echo "saturday"
				;;
		*)
				echo "enter number between 1 to 7 to know the day"
				;;
esac
