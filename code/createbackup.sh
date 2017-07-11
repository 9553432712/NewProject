#!/bin/bash


DIR=$1
if [  $# -eq 0 ];
then 
	echo "Please enter valid Foldr name"
#	exit
fi
if [ ! -d "$DIR" ];
then 
	echo "U r entered wrong folder name"
#	exit
fi
if [ -d "$DIR" ];
then
	#	echo "Correct"
	SRC=/home/mahesh
	DEST=/home/mahesh/backup/backup-`date +%d-%m-%y`.tar.gz
	FNAME=backup-`date +%d-%m-%y`.tar.gz
	echo $FNAME
echo $DEST$FNAME
echo $SRC
	tar -cvpzf $DEST $SRC
#	tar -cvpzf /home/mahesh/backup/backup-`date +%d-%m-%y`.tar.gz   /home/mahesh
fi

