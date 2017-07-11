#!/bin/bash

USER=$1
 
if [ -z "$USER" -o $# -eq 0  ];
then
	echo "Invalid attempt"
	exit
fi
echo "u r enter user as $USER"

#check super admin permision

WHO=`/usr/bin/whoami`

if [ $WHO != "root" ];
then
	echo "not root user"
	exit
fi
/usr/bin/id $USER

if [ $? -eq 0 ];
 then
	echo "user already exist"
	exit
fi
useradd -m $USER
echo $?
if [ $? -eq 0 ];
then
echo "user created successfu;;y"
DEFPASS="Mahi@1234"
echo "$DEFPASS" | passwd $USER --stdin
chage -d 0 $USER
fi
