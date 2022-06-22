#!/bin/bash
echo "enter directory name"
read dir
if [ -d $dir ]
then
	echo "list of files in the directory"
	ls -l $dir | e grep '^d'
else
	echo "enter proper directory name"
fi
