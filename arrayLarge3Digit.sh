#!/bin/bash

for (( i=0; i<10; i++ ))
do
	Num[$i]="$(( (RANDOM%899) +100 ))";
done

echo "Random Numbers are: ${Num[*]}"

large=1
for ((i=0; i<=10; i++)) 
do
	if [[ ${Num[i]} -gt $large ]]
	then
	large=${Num[i]}
	fi
done
echo "Largest number is $large"
