#!/bin/bash -x
for ((start=0; start<10; start++))
do
  randomNumberArray[$start]=$(( RANDOM%900+100 ));
done
echo "${randomNumberArray[@]}"
minNumber=${randomNumberArray[0]};
maxNumber=${randomNumberAarray[0]};
secondMaxNumber=${randomNumberArray[1]};
secondMinNumber=${randomNumberArray[1]};
for ((index=1; index<10; index++))
do
  if [[ ${randomNumberArray[index]} -gt $maxNumber ]]	
  then
     secondMaxNumber=$maxNumber;
	  maxNumber=${randomNumberArray[index]};
  elif [[  ${randomNumberArray[index]} -gt $secondMaxNumber ]] 
 	then
		secondMaxNumber=${randomNumberArray[index]}  
   fi
   if [[ ${randomNumberArray[index]} -lt $minNumber ]]  
   then
     secondMinNumber=$minNumber;
     minNumber=${randomNumberArray[index]};
   elif [[  ${randomNumberArray[index]} -lt $secondMinNumber ]] 
   then
      secondMinNumber=${randomNumberArray[index]}  
   fi
 done
echo "Second largest number is:" $secondMaxNumber;
echo "Second smallest number is:" $secondMinNumber;

