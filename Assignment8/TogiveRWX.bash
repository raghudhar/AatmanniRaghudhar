#!/bin/bash
#shell script to display the list of file names
#having read, write and execute permission
echo "The name of all files having all permissions:"
#loop through all files in current directory
for wrx in *
do
#check if it is a file
if [ -f $wrx ]
then
	#check if it has all permissions
	if [ -r $wrx -a -w $wrx -a -x $wrx ]
	then
		#print the complete file name with -l option
		ls -l $wrx

		#closing second if statement
	fi
	#closing first if statement
fi
done

