#!/bin/bash -x
read -p number "Enter 1,10,100 to know the place in unit,ten,hundred:" number
case $number in 
		1)
				echo "unit"
				;;
		10)
				echo "ten"
				;;
		100)
				echo "hundred"
				;;
		*)
				echo "Enter correct number"
				;;
esac
