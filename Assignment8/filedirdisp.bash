#!/bin/bash
echo "enter the a file or directory"
read file
if [ -e $file ] # -e existing file
then
	if [ -f $file ] # -f file is already exit
	then
		echo "this is file"
		cat $file
		elif [ -d $file ] #-d is already directory
		then
			echo "thisi is dirctory"
			cat $file
			`ls -d */` $file
		fi
	fi
