#!/bin/bash
echo "press or enter the user name"
read
who >userlist
if grep $a userlist
then
	echo "user logged on"
else
	echo "user not logged on"
fi
