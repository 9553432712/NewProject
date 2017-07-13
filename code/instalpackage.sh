#!/bin/bash

if [ $# -eq 0 ];
then 

echo "enter package to install";
exit;
fi;

PACK=$1;
echo "$PACK";

if  ! rpm -qa | grep -qw $PACK ; 
then 
echo "we will instal";
yum -y install $PACK;
else
echo "the package is already available";
exit;
fi;
