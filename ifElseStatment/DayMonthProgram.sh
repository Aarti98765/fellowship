#!/bin/bash
day=$1
month=$2
if [[ $month -ge 03 && $month -le 06 ]] 
then
	if [[ $day -ge 20 && $month -ge 03 || $month -eq 04 || $month -eq 05 || $day -le 20 && $month -le 06 ]]
	then
		echo  "true"
	else
		echo "false"
	fi
else
	 echo "false"
fi
