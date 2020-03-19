#!/bin/bash -x
for ((start=0; start<10; start++))
do
  randomNumberArray[$start]=$(( RANDOM%900+100 ));
done
echo "Array elements are :" ${randomNumberArray[@]}
for ((index=0; index<10; index++))
do
	for ((row=$(( $index+1 )); row<10; row++))
	do
	  if [[ ${randomNumberArray[index]} -gt ${randomNumberArray[row]} ]]
	  then
		tempVeriable=${randomNumberArray[index]};
		randomNumberArray[index]=${randomNumberArray[row]};
		randomNumberArray[row]=$tempVeriable; 
	fi
   done
done
echo "Array elements after sorting are:" ${randomNumberArray[@]}
secondMinNumber=${randomNumberArray[1]};
secondMaxNumber=${randomNumberArray[8]};
echo "second largest" $secondMaxNumber;
echo "second smallest" $secondMinNumber;

