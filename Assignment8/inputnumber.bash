#!/bin/bash
echo "Enter Number :"
read number
len=echo $number | wc -c
echo "number in words"
for (( i=1; i<=$len; i++ ))
do
	num=$(echo $number | cut -c $i)
	case num in
		0)echo -number "zero";;
		1)echo -number "one";;
		2)echo -number "two";;
		3)echo -number "three";;
		4)echo -number "four";;
		5)echo -number "five";;
		6)echo -number "six";;
		7)echo -number "seven";;
		8)echo -number "eight";;
		9)echo -number "nine";;
		esac
done
