#!/bin/bash

array=(9 2 7)

echo "given array is ${array[@]}";

x=0;
for i in ${array[@]}
do
y=0;
 echo "x val $x and ${array[$x]}";
	for j in ${array[@]}
	do
#		echo "y is $y";
#		echo "i value is $i";
#		echo "j val is $j";
		if [ $i -gt $j ];
		then
		#	echo "true";
			temp=$i;
			array[$x]=${array[$y]};
			array[$y]=$temp;
#			echo ${array[@]};
		fi;
	y=`expr $y + 1`;
	done
x=`expr $x + 1`;
#echo "$x   `expr $x + 1`";
done
echo ${array[@]};
