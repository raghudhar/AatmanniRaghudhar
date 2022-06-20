#!/bin/bash
echo "Enter length"
echo "Enter breadth"
read length
read breadth
area=$(echo "scale=4; $length*$breadth" | bc )
echo $area
