#!/bin/bash -x
echo "Enter three numbers which required to perform arithmetic computation:" 
read firstNumber secondNumber thirdNumber
key=1
computationAnsDictionary[key]=$(( $firstNumber+$secondNumber*$thirdNumber ))
 (( key ++ ))
computationAnsDictionary[key]=$(( $firstNumber*$secondNumber+$thirdNumber ))
 (( key ++ ))
computationAnsDictionary[key]=$(( $firstNumber+$secondNumber/$thirdNumber ))
 (( key ++ ))
computationAnsDictionary[key]=$(( $firstNumber%$secondNumber+$thirdNumber ))
echo "Values of dictionary:" ${computationAnsDictionary[@]}

counter=0
for value in ${computationAnsDictionary[@]}
do
  computationAnsArray[$(( counter++ ))]=$value
done
echo "Values of array:" ${computationAnsArray[@]}

for ((start=0; start<key; start++))
do 
 for ((row=$(( $start+1 )); row<key; row++))
 do
	if [[ computationAnsArray[start] -lt computationAnsArray[row] ]]
	then
	 tempVeriable=${computationAnsArray[start]}
	 computationAnsArray[start]=${computationAnsArray[row]}
	 computationAnsArray[row]=$tempVeriable
	fi
 done
done
echo "Array element in descending order is:" ${computationAnsArray[@]}

index=key 
countOfArray=1
while [[ $(( $index+1 )) -ne 0 ]]  
do
  sortedArrayDesending[countOfArray]=${computationAnsArray[index]}
  (( countOfArray++ ))
  (( index-- ))
done
echo "Array element in ascending order is:" ${sortedArrayDesending[@]}
