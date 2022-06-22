#!/bin/bash
echo "enter a file1"
read file1
echo "enter a file2"
read file2
if [ -e $file1 ]
then
	echo "This file is exists"
if [ -e $file2 ]
then
	echo "This is second file"
	cat $file1>>$file2
else
	cat $file1>$file2
fi
fi

