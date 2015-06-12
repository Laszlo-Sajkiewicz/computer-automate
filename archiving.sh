#!/bin/bash

d_gzip=$(ls | grep *.gz | wc -l);
d_bz2=$(ls | grep *.tar.bz2 | wc -l);
d_zip=$(ls | grep *.zip | wc -l);

#use:
# -d : decompress
# -c: compress


if [[ "$1" == "-d" ]]; then
	#Use : ./archiving.sh -d FILENAME
	
	if [[ $d_gzip -ne 0 ]]; then
		gunzip $2 #decompress *.gz ok
	elif [[ $d_bz2 -ne 0 ]]; then	
		tar jxvf $2 # decompress *.tar.bz2 ok
		rm $2
	elif [[ $d_zip -ne 0 ]]; then #ok
		unzip $2
		rm $2
	fi
elif [[ "$1" == "-c" ]]; then
	#use : ./archiving.sh -c bz2 FILENAME
	if [[ "$2" == "gzip" ]]; then
		gzip $3 #ok
	elif [[ "$2" == "bz2" ]]; then
		 tar jcvf $3.tar.bz2 $3 # $3 : file name ok
		 rm $3
	elif [[ "$2" == "zip" ]]; then
		zip $3.zip $3 # $3 : file name ok
		rm $3
	fi
elif [[ "$1" == "-h" ]]; then
	 echo -e "\033[34m\033[45m USE :\033[0m "
	 echo 'To compress : ./archiving.sh -c , -c : compress'
	 echo './archiving.sh -c bz2|gzip|zip FILENAME'
	 echo 'EX : ./archiving.sh -c bz2 test'
	 echo 'To decompress : ./archiving.sh -d , -d : decompress'
	 echo './archiving.sh -d FILENAME'
	 echo 'EX: ./archiving.sh -d test.bz2 '
fi


