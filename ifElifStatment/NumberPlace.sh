#!/bin/bash -x
read -p "Enter 1,10,100,100 to print unit,ten,hundred:" number
if [ $number -eq 1 ]
then
		echo "unit"
elif [ $number -eq 10 ]
then
		echo "ten"
elif [ $number -eq 100 ]
then 
		echo "hundred"
fi
