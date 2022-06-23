#!/bin/bash
#Write shell script to addition of two matrices
matrix1=(1 2 3 4 5 6 7 8 9) #This is first matrix1
matrix2=(10 11 22 33 55 46 56 43 45) #This is second matrix2
rows=3
cols=3
echo "Enter First Matrix1"
for (( i=0; i<rows; i++ ))
do
	for (( j=0; j<cols; j++ ))
	do
		index=$((i*cols+j))
		echo -n "${matrix1[index]}"
	done
	echo
done

echo "enter Second Matrix2"
for (( i=0; i<rows; i++ ))
do
	for (( j=0; j<cols; j++ ))
	do
		index=$((i*cols+j))
		echo -n "${matrix2[index]}"
	done
	echo
done

k=0
matrix=() #This is addition of two matrixs
for (( i=0; i<rows; i++ ))
do
	for (( j=0; j<cols; j++ ))
	do
		index=$((i*cols+j))
		matrix3[k]=$((${matrix1[index]} + ${matrix2[index]}))
		k=$((k+1))
	done

done

echo "Addition of two matrixs"
for (( i=0; i<rows; i++ ))
do
	for (( j=0; j<cols; j++ ))
	do
		index=$((i*cols+j))
		echo -n "${matrix3[index]}"
	done
	echo
done
