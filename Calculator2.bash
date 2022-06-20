#!/bin/bash
echo "Enter First Number"
echo "Enter second Number"
read num1
read num2
function addition{
	addition=$(echo "scale=2; $num1 + $num2" | bc)
	echo $addition
}
function subtraction{
	subtraction=$(echo "scale=2; $num1 - $num2" | bc)
	echo $subtraction 
}
function multiplication {
	multiplication=$(echo "scale=2; $num1 \* $num2" | bc)
	echo $multiplication
}
function division {	
	if[[$num2 ==0]];
	then	
		echo "Division by zero is not allowed"
		exit 1
	else
		division=$(echo "scale=2; $num1/$num2" | bc)
		echo $division
	fi
}
if [[ -z "$num1" ]];
then
	echo "first number is not specified"
	exit 1
elif [[ -z "$num2" ]];
then
	echo "second number is not specified"
	exit 1
else 
	echo "enter your choice"
	echo "1. Addition"
	echo "2. Subtraction"
	echo "3. multiplication"
	echo "4. division"
	read choices
fi
if [[ $choices == 1 ]]
then
	addition
elif [[ $choices == 2 ]]
then
	subtraction
elif [[ $choices == 3 ]]
then
	multiplication
elif [[ $choices == 4 ]]
then
	division
else
	echo "invalid output"
fi

