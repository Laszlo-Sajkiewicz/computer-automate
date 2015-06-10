#!/bin/bash

d_gzip=$(ls | grep *.gz | wc -l);
d_bz2=$(ls | grep *.tar.bz2 | wc -l);

#use:
# -d : decompress
# -c: compress


if [[ "$1" == "-d" ]]; then
	
	if [[ $d_gzip -ne 0 ]]; then
		gunzip *.gz #decompress *.gz
	elif [[ $d_bz2 -ne 0 ]]; then	
		tar jxvf *.tar.bz2 # decompress *.tar.bz2
	fi
elif [[ "$1" == "-c" ]]; then
	
	if [[ "$2" == "gzip" ]]; then
		gzip $3
	elif [[ "$2" == "bz2" ]]; then
		
		 tar jcvf $3.tar.bz2 $4
	fi
fi
#compress = c
#decompress

