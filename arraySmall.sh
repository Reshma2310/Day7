#!/bin/bash

for (( i=0; i<10; i++ ))
do
	Num[$i]="$(( (RANDOM%899) +100 ))";
done

echo "Random Numbers are: ${Num[*]}"

small=999
for ((i=0; i<=10; i++)) 
do
	if [[ ${Num[i]} -lt $small ]]
	then
	small=${Num[i]}
	fi
done
echo "Smallest number is $small"
