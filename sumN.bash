#!/bin/bash
echo "enter number"
read n
sum=0
for ((i=0; i<=n; i++))
do
	sum=$((sum + i))
done
echo $sum
