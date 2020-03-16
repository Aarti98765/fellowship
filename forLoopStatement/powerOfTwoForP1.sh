#!/bin/bash -x
valuesOfTable=1
echo "Take number n from command line to print the table of power of two"
n=$1
for (( i=1; i<=$n; i++ ))
do
		valuesOfTable=$(($valuesOfTable*2));
		echo $valuesOfTable;
done

