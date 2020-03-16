#!/bin/bash -x
randomNo1=$(( RANDOM%900 ));
randomNo2=$(( RANDOM%900 ));
randomNo3=$(( RANDOM%900 ));
randomNo4=$(( RANDOM%900 ));
randomNo5=$(( RANDOM%900 ));

if [[ $randomNo1 -gt $randomNo2 && $randomNo1 -gt $randomNo3 && $randomNo1 -gt $randomNo4 && $randomNo1 -gt $randomNo5 ]]
then
		echo "randomNo1 Maximum Number:" $randomNo1
elif [[ $randomNo2 -gt $randomNo1 && $randomNo2 -gt $randomNo3 && $randomNo2 -gt $randomNo4 && $randomNo2 -gt $randomNo5 ]]
then 
		echo "randomNo2 Maximum Number:" $randomNo2
elif [[ $randomNo3 -gt $randomNo1 && $randomNo3 -gt $randomNo2 && $randomNo3 -gt $randomNo4 && $randomNo3 -gt $randomNo5 ]]
then
		echo "randomNo3 Maximum Number:" $randomNo3
elif [[ $randomNo4 -gt $randomNo1 && $randomNo4 -gt $randomNo2 && $randomNo4 -gt $randomNo3 && $randomNo4 -gt $randomNo5 ]]
then
		echo "randomNo4 Maximum Number:" $randomNo4
else
		echo "randomNo5 Maximum Number:" $randomNo5
fi

if [[ $randomNo1 -lt $randomNo2 && $randomNo1 -lt $randomNo3 && $randomNo1 -lt $randomNo4 && $randomNo1 -lt $randomNo5 ]]
then
		echo "randomNo1 Minimum Number:" $randomNo1
elif [[ $randomNo2 -lt $randomNo1 && $randomNo2 -lt $randomNo3 && $randomNo2 -lt $randomNo4 && $randomNo2 -lt $randomNo5 ]]
then
		echo "randomNo2 Minimum Number:" $randomNo2
elif [[ $randomNo3 -lt $randomNo1 && $randomNo3 -lt $randomNo2 && $randomNo3 -lt $randomNo4 && $randomNo3 -lt $randomNo5 ]]
then
		echo "randomNo3 Minimum Number:" $randomNo3
elif [[ $randomNo4 -lt $randomNo1 && $randomNo4 -lt $randomNo2 && $randomNo4 -lt $randomNo3 && $randomNo4 -lt $randomNo5 ]]
then
		echo "randomNo4 Minimum Number:" $randomNo4
else
		echo "ramdomNo5 Mimnimum Number:" $randomNo5
fi
