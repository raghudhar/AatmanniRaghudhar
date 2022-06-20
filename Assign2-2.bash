#!/bin/bash
echo "Enter Num1"
echo "Enter Num2"
echo "Enter Num3"
read num1
read num2
read num3
if [ $num1 -gt $num2] && [ $num1 -gt $num3 ]
then
	echo $num1
elif [ $num2 -gt $num3 ]
then
	echo $num2
else
	echo $num3
fi
