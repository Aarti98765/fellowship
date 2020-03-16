#!/bin/bash -x
read -p "Enter the number n to know the factorial of that number:" number
factorial=$number
previousNumber=$(($number-1))
for (( startNumber=1; startNumber<=$number-1; startNumber++ ))
do
		factorial=$(( $factorial*$previousNumber ))
		previousNumber=$((previousNumber-1))
done
echo $factorial
