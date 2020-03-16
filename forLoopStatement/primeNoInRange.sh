#!/bin/bash -x
echo "Take minimum and maximum number to know the prime number within that range"
read -p "Enter minimum and maximum number:" min max 
for (( nomerator=$min; nomerator<=$max; nomerator++ ))
do		
		counter=0
		for (( denomenator=2; denomenator<=$(($min-1)); denomenator++ ))
		do
			if [[ $nomerator%$denomenator -eq 0 ]]
			then
					counter=$(($counter+1))
			fi
      done
		if [[ $counter -eq 0 ]]
		then
					echo $nomerator
		fi	
done
