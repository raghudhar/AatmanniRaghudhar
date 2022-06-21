#!/bin/bash
echo "Enter any value for countdown"
read a
while test $a -gt 0
do 
	echo $a
	a=`expr $a - 1`
done
