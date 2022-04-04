#!/bin/bash -x

array=(4 -5 1)
sum=0
for (( i=0; i<${#array[@]}; i++ ))
do
	sum=$(( $sum + ${array[i]} ))
done
echo $sum
