#!/bin/bash -x
echo "Take number n from command line to print nth harmonic"
n=$1
for (( i=1; i<=n; i++))
do
			harmonicNo=`echo "scale=1; 1/$i " | bc `
done
echo $harmonicNo
