#!/bin/bash -x
echo "Enter numbers in Feet,Inch,Meter:"
read number_ft number_in number_meter 
read -p "
1)Feet  to Inch
2)Feet  to Meter
3)Inch  to Feet
4)Meter to Feet
Enter your choice:" choice

case $choice in
			1)
					echo "Feet To Inch Conversion" 
					new_number_in=`echo "scale=2; ($number_ft*12) " | bc -l`;
					;;
			2)
					echo "Feet To Meter Conversion" 
					new_number_meter=`echo "scale=2; ($number_ft/3.28) " | bc -l`
					;;
			3)
					echo "Inch To Feet Conversion"
					new_number_ft=`echo "scale=2; ($number_in/12) " | bc -l`
					;;			
			4)
					echo "Meter To Feet Conversion"
					new_number_ft=`echo "scale=2; ($number_meter*3.28) " | bc -l`
					;;
			*)
					echo "Enter correct choice"
					;;
esac
