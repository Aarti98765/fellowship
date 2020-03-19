#!/bin/bash -x
read -p "Enter the number to know the prime factors of that number:" number
index=2
arrayIndex=1
while [[ $number -ne 0 && index -le $number ]]
do
   if [[ $number%$index -eq 0 ]]
	then
	  primeFactorArray[arrayIndex]=$index
	  (( arrayIndex++ ))
	  number=$(( $number/$index ))
	else
		(( index++ ))
	fi
done
echo "${primeFactorArray[@]}"

