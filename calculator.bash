#!/bin/bash
echo "Enter two numbers:"
read a
read b
echo "Enter Your Choice"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch
case $ch in
	1)res=`echo $a + $b | bc`;;
	2)res=`echo $a - $b | bc`;;
	3)res=`echo $a \* $b | bc`;;
	4)res=`echo $a / $b | bc`;;
esac
echo $res
