#!/bin/bash
echo "Enter a line of Text:"
read string
numCount=$(echo $string | grep -o "[0-9]" | wc --lines)
vowCount=$(echo $string | grep -o "[aeiou]" | wc --lines)
consCount=$(echo $string | grep -o "[bcdfghjklmnpqrstvwxyz]" | wc --lines)
echo "The Given string hase Vowels" $vowCount
echo "The Given string hase consonants" $consCount
echo "The given string hase numerCount" $numCount
