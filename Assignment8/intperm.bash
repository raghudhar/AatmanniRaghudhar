#!/bin/bash
#script to change permission of file

#File variable to store file.txt location
FILE="file.txt"
#to check the file we want to change exists or not
if [[ ! -e "${FILE}" ]]
then
	echo "Creating ${FILE} file"
	touch file.txt
fi
#To remove write permission of other and group of file 
chmod 744 "${FILE}"

#to check if the permission are removed
ls -l "${FILE}"
