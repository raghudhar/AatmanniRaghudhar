#!/bin/bash
echo "Enter string"
read string
v=$(echo $string | grep -o -i "[aeiou]" | wc -l)
echo $v
b=$(echo $v | grep -c )
echo $b
