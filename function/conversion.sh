#!/bin/bash -x
function conversion() {
 echo "1)Conversion of fahrenheit to celcious"
 echo "2)Conversion of celcious to fahrenheit"
 read -p "Enter your choice:" choice
 case $choice in
  1)
		read -p "Enter temprature in fahrenheit to convert into celcious:" fahrenheit
		if [[ $fahrenheit -lt 32 && $fahrenheit -gt 212 ]]
		then
		  echo "Enter temprature in range of 32 to 212"
		else
	#	  conversionValue=`echo "scale=4; 9 / 5 " | bc`
		  celcious=`echo "scale=4; ($fahrenheit -32)*5/9 " | bc ` 
	     echo $celcious "celcious"
		fi
		;;
	2)
		read -p "Enter temprature in celcious to convert into fahrenheit:" celcious
		if [[ $celcious -lt 0 && $celcious -gt 100 ]]
      then
		 echo "Enter temprature in range of 0 to 100"
		else
		 #conversionValue=`echo "scale=4; 9 / 5 " | bc`
		 fahrenheit=`echo "scale=4; ($celcious*9/5)-32 " | bc `
		 echo $fahrenheit "fahrenheit"
		fi
		;;
	*)
		echo "Invalid Choice" ;;
 esac
}
conversion
