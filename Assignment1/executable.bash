#!/bin/bash
echo "Enter your file name"
read a
if [ ! -e $a ]
then
	echo "file not exist"
elif [ ! -x $a ]
then
	echo "file is executable"
else
	echo "we made it executable"
	chmod 777 $a
fi
