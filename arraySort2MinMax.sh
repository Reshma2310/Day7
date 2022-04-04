#!/bin/bash

for (( i=0; i<10; i++ ))
do
	arr[$i]="$(( (RANDOM%899) +100 ))";
done

echo "Random Numbers are: ${arr[*]}"

echo ${arr[*]}

# Performing Bubble sort
for ((i = 0; i<10; i++))
do
    for((j = 0; j<10-i-1; j++))
    do
        if [ ${arr[j]} -gt ${arr[$((j+1))]} ]
        then
            # swap
            temp=${arr[j]}
            arr[$j]=${arr[$((j+1))]}
            arr[$((j+1))]=$temp
        fi
    done
done

echo "Array in sorted order :"
echo ${arr[*]}

echo "Second Largest number is ${arr[8]}"
echo "Second Smallest number is ${arr[1]}"

