#!/bin/bash -x

for (( i=0; i<50; i++ ))
do
	var=$((RANDOM%100))
	if [[ $var%11 -eq 0 ]]
	then
	output[$i]="$var"
	fi
done
echo ${output[*]}
