#!/bin/bash
#shell script to find average of n numbers
 # Total numbers
n=7
 #copying the value of n
m=$n
 #initialized sum by 0
sum=0
 #array initialized with some numbers
array=(1 2 3 4 5 6 7)
#loop until n i greter than 0
while [ $n -gt 0 ]
do
	#copy element in a temp variable
	num=${array[`expr $n - 1`]}
	#add them to sum
	sum=`expr $sum + $num`
	#decrement count of n
	n=`expr $n - 1`
done
#displaying the average by piping with bc command is bash calculator command
avg=`echo "$sum / $m" | bc --l`
printf '0.3f' "$avg"
