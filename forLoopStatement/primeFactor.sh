#!/bin/bash -x
read -p "Enter number n to know the prime factor of that number:" number
for (( start=2; start<=$number; start++ ))
do
		for (( ; $number%$start==0; )) 
		do
				echo $start;
				number=$(($number/$start));
		done
done
