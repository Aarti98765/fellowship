#!/bin/bash -x
read -p "Enter two numbers to check if both are palindrome or not:" firstNumber secondNumber

function reverse() {
 firstNumber=$1
 reverseNumber=0
 lastDigit=0
 while [[ $firstNumber -ne 0 ]]
 do
  lastDigit=$(( $firstNumber%10 ))
  reverseNumber=$(( $reverseNumber*10+$lastDigit ))
  firstNumber=$(( $firstNumber/10 ))
 done
 echo $reverseNumber
}

function isPalindrome() {
local reverseNumber=$1 
local secondNumber=$2
 if [[ $secondNumber -eq $reverseNumber ]]
 then
  echo "Both two numbers are palindrome"
 else
  echo "Both two numbers are not palindrome"
 fi
}
reversNumber=$( reverse $firstNumber )
isPalindrome $reversNumber $secondNumber 




