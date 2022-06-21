#!/bin/bash
a=$1
while test $a -gt 0
do
	echo $a
	a=`expr $a - 1`
done

