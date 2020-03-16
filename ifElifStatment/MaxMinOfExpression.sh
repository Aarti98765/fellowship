#!/bin/bash -x
echo "Enter values:"
read a b c
exp1=$(( $a+$b*$c ));
exp2=$(( $a%$b+$c ));
exp3=$(( $c+$a/$b ));
exp4=$(( $a*$b+$c ));
if [[ $exp1 -gt $exp2 && $exp1 -gt $exp3 && $exp1 -gt $exp3 ]]
then  
		echo "expression1 maximum number:" $exp1;
elif [[ $exp2 -gt $exp1 && $exp2 -gt $exp3 && $exp2 -gt $exp4 ]]
then
		echo "Expression2 maximum number:" $exp2;
elif [[ $exp3 -gt $exp1 && $exp3 -gt $exp2 && $exp3 -gt $exp4 ]]
then 
		echo "Expression3 maximum number:" $exp3;
else
		echo "Expression4 maximum number:" $exp4;
fi

if [[ $exp1 -lt $exp2 && $exp1 -lt $exp3 && $exp1 -lt $exp4 ]]
then
		echo "expression1 minimum number:" $exp1;
elif [[ $exp2 -lt $exp1 && $exp2 -lt $exp3 && $exp2 -lt $exp4 ]]
then
		echo "expression2 minimum number:" $exp2;
elif [[ $exp3 -lt $exp1 && $exp3 -lt $exp2 && $exp3 -lt $exp4 ]]
then
		echo "expression3 minimum number:" $exp3;
else
		echo "expression4 minimum number:" $exp3;
fi
