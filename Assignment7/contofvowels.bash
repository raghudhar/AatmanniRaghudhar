#!/bin/bash
filename=$raghudar.bash
echo "Number of words with vowels"
while read line;
do
	echo $line
	less $raghudar.bash | grep -E [aeiouAEIOU] | wc -w

done 

