#!/bin/bash
a=0
#-gt is greater than operator
#iterate the loop until a is greater than 10
until [ $a -gt 10 ]
do
	#print the values
	echo $a
	#increment the value
	a=`expr $a + 1`
done
