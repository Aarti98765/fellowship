#!/bin/bash -x
counter=0
while [[ counter -ne  100 ]]
do
 (( counter++ ))
 unitPlaceNumber=$(( $counter%10 ))
 tensPlaceNumber=$(( $counter/10 ))
 if [[ $unitPlaceNumber -eq $tensPlaceNumber ]]
 then
	repeatedtwiceDigitArray[index]=$counter
	(( index++ ))
 fi
done
echo "${repeatedtwiceDigitArray[@]}"
