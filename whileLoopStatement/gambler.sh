#!/bin/bash -x 
stack=100
GOAL_TO_ACHIEVE=200
BROKE_AMOUNT=0
winCount=1
lossCount=0
bet=1

while [[ $stack -ne 0 && $stack -lt $GOAL_TO_ACHIEVE ]]
do
		numberWinOrLoss=$((RANDOM%2))
		((bet++))
		if [[ $numberWinOrLoss -eq 1 ]]
		then
				((winCount++))
				stack=$(($stack+$bet))
		else
				((lossCount++))
				stack=$(($stack-$bet))
		fi
done
if [[ $stack -ge $GOAL_TO_ACHIEVE ]]
then
		echo "Winner"
else
		echo "broke"
fi
