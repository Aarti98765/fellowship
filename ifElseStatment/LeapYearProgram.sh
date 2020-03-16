#!/bin/bash -x
year=$1
if [[ $year -gt 999 && $year -le 9999 ]]
then
 if [[ $year%4 -eq 0 && $year%100 -ne 0 || $year%400 -eq 0 ]]
then
		echo "Leap year"
else
		echo "not leap year"
fi
else
	echo "Invalid choice";
fi
