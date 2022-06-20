#!/bin/bash
echo $"user name:" $LOGNAME
echo $"shell:" $SHELL
echo "current home directory" $PWD
echo "current user" $USER
echo "Today is: " $(date +"%m-%d-%y")
echo "No fo users Logged in: " $(who -q)
echo "Terminal: " $(tty)
