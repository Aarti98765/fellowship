#!/bin/bash -x
echo "Take the input and determine if the number is prime number or not"
count=0
read -p "Enter number:" number
for (( i=2; i<=$(($number-1)); i++))
do
		if [[ $number%$i -eq 0 ]]
		then
			count=$((count+1))
		fi
done
if [[ $count -gt 0 || $number -eq 1 || $number -eq 0 ]]
then
	echo "Not a prime number"
else
	echo "Prime number"
fi
