#!/bin/bash

echo "$1"
if [ -z "$1" ];
then
	echo "please give input file"
	exit
else
	echo "1st if enterred"
	if [ -f $1 ];
	then 
		echo "entered into 2nd if cond"
		SUM=0
		for i in `cat $1`
		do
			echo "hai $i"
			SUM=`expr $SUM + $i`
			echo "sum is $SUM"

		done
	else
		echo "inner else etered"
	fi

fi
#for i in `cat 
