#!/bin/bash -x
winHead=0
winTail=0
while [[ $winHead != 11 && $winTail != 11 ]] 
do
		counter=$((RANDOM%2));
		if [[ $counter -eq 1 ]]
		then
				((winHead++))
		else
				((winTail++))
		fi
done
echo "Head wins:" $winHead
echo "Tail wins:" $winTail
