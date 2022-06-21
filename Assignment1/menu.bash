#!/bin/bash
1. ls
2. pwd
3. ls -l
4. ps -fe
printf"\n\t 1. ls \n\t 2. pwd \n\t 3. ls -l \n\t 4. ps -fe\n\t"
echo "Enter your choice"
read a
case $a in
	1)ls;;
	2)pwd;;
	3)ls -l;;
	4)ps -fe;;
	*)echo "enter correct value"
esac

