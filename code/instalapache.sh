#!/bin/bash

if rpm -qa | grep -qw httpd ; 
then 
echo "Apache already installed";
exit;

else

yum -y install httpd;
echo "Apache Installed SuccessfullY:";
service httpd start;
fi;
