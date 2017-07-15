#!/bin/bash

array=(9 2 7)

echo "given array is ${array[@]}";


a2=$(for i in ${array[@]}
do
	echo "$i";
done | sort);

echo ${a2[@]};
#echo ${array[@]};
