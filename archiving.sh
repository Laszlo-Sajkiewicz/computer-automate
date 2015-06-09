#!/bin/bash

d_gzip=$(ls | grep *.gz | wc -l);
d_bz2=$(ls | grep *.bz2 | wc -l);
#use:
# -d : decompress
# -c: compress
echo $1
echo $2 
echo $3

if [[ $1="-d" ]]; then
	echo "decompress"
	if [[ $d_gzip -ne 0 ]]; then
		gunzip *.gz #decompress *.gz
	elif [[ $d_bz2 -ne 0 ]]; then
		bunzip2 *.bz2	#decompress *.bz2	
	fi
elif [[ $1="-c" ]]; then
	echo "compress"
	if [[ $2='gzip' ]]; then
		gzip $3.gz
	fi
		

fi
#compress = c
#decompress

