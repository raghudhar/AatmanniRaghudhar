#!/bin/bash
echo "Enter the PI"
echo "Enter rate of interset"
echo "Enter the time period"
read p
read a
read t
s=`expr $p \* $t \* $a / 100`
echo "The simple interest"
echo $s
