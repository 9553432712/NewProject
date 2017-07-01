#!/bin/bash





USER=$1
echo "u r enter user as $USER"

#check super admin permision

WHO=`/usr/bin/whoami`

if [ $WHO != "root" ];
then
	echo "not root user"
	exit
fi
USEREXIST=`/usr/bin/id $USER`
echo "$USEREXIST"
if [ "$USEREXIST" == "0" ];
then
	echo "user already exist"
	exit
fi


