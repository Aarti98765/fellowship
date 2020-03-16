#!/bin/bash -x
heads=1;
coinNumber=$(( RANDOM%2+1 ));
if [ $coinNumber -eq $heads ]
then
		echo "Heads"
else
		echo "Tails"
fi
