#!/bin/bash -x
read -p "Enter the number to check it is prime or not if prime then check its palindrom is also prime or not:" number
function isPrime() { 
checkNumber=$1
flag=0
 for ((start=2; start<=$(( $checkNumber / 2 )); start++))
 do
   if [[ $(( $checkNumber%$start )) -eq 0 ]]
	then
	  flag=1;
	  start=$(( $checkNumber/2 ))
   fi
 done
 
if [[ $flag -eq 0 ]]
 then
	  counter=1
 fi
 echo $counter
} 

function palindrome() {
tempVeriable=$1
lastDigit=0
local reverseNumber=0
while [[ $tempVeriable -ne 0 ]]
do
 lastDigit=$(( $tempVeriable % 10 ))
 reverseNumber=$(( $reverseNumber*10+$lastDigit ))
 tempVeriable=$(( $tempVeriable/10 ))
done
 echo $reverseNumber
}

tempCounter="$( isPrime $number )"
if [[ $tempCounter -eq 1 ]]
then
	echo "Number is prime"
	reverseNumber="$( palindrome $number )"
   decisionNumber="$(isPrime $reverseNumber)"
	if [[ $decisionNumber -eq 1 ]]
	then
		echo "The number and palindrome of that number is also prime"
	else
		echo "Number is prime but palindrome of the number is not prime"
   fi
else
	echo "The number is not prime"
fi
