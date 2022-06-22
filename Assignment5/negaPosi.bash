#!/bi/bash
#shell scripts to check whether a number is positive or negative
echo "Enter a Number"
read num
if [ $num -lt 0 ]
then
	echo "negative"
elif [ $num -gt 0 ]
then
	echo "Positive"
else
	echo "Neither Positive Nor negative"
fi
