#!/bin/bash
echo "enter a basic salary"
read basic
dp=$(echo "scale=4; $basic / 2" | bc)
echo $dp
db=$(echo "scale=4; $basic+$dp" | bc)
echo $db
da=$(echo "scale=4; $db*0.35" | bc)
echo $da
hra=$(echo "scale=4; $db*0.08" | bc)
echo $hra
ma=$(echo "scale=4; $db*0.03" | bc)
echo $ma
pf=$(echo "scale=4; $db*0.1" | bc)
echo $pf
salary=$(echo "scale=4; ($basic+$dp+$da+$hra+$ma)-$pf" | bc)
echo $salary
