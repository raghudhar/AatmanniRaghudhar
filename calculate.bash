#!/bin/bash
length=$10
breadth=$20
function calculate_area {
	length=$10
	breadth=$20
	area=$(echo "scale=4; $length*$breadth" | bc)
	echo $area
}
if [[ -z "$length" ]];
then
	echo "Length not specified , specify as first parameters"
elif [[ -z "$breadth" ]];
then
	echo "Breadth is not specified, specify as second paramenters"

else
	calculate_area "$length" "$breadth"
fi
	
