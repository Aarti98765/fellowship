#!/bin/bash -x
number=$1
valuesOfTable=1
#while [[ $count -ne 9 ]]
#do
	  #valuesOfTable=$(( $valuesOfTable*2 ))
if [[ $valuesOfTable -le $number ]] 
then
	  while [[ $count -ne 8 ]]
	  do
	  valuesOfTable=$(( $valuesOfTable*2 ))
	  echo $valuesOfTable		
	  count=$((count+1))
	  done
fi	 
