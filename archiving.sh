#!/bin/bash

d_gzip=$(ls | grep *.gz | wc -l);
d_bz2=$(ls | grep *.tar.bz2 | wc -l);
d_zip=$(ls | grep *.zip | wc -l);

#use:
# -d : decompress
# -c: compress

option="${1}";

case ${option} in
    -d) if [[ $d_gzip -ne 0 ]]; then
		    gunzip $2 #decompress *.gz ok
	    elif [[ $d_bz2 -ne 0 ]]; then	
		    tar jxvf $2 # decompress *.tar.bz2 ok
		    rm $2
	    elif [[ $d_zip -ne 0 ]]; then #ok
		    unzip $2
		    rm $2
	    fi
        ;;
    -c) if [[ "$2" == "gzip" ]]; then
		    gzip $3 #ok
		    gzip -t $3.gz
		    echo 'test of' $3'.gz : ok'
	    elif [[ "$2" == "bz2" ]]; then
		    tar jcvf $3.tar.bz2 $3 # $3 : file name ok
		    bzip2 -t $3.tar.bz2 
		    echo 'test of' $3'.tar.bz2 : ok'
		    rm $3
	    elif [[ "$2" == "zip" ]]; then
		    zip $3.zip $3 # $3 : file name ok
		    zip -T $3.zip
		    rm $3
	    fi
        ;;
    *)  echo -e "\033[34m\033[45m USE :\033[0m "
        echo 'To compress : ./archiving.sh -c , -c : compress'
        echo './archiving.sh -c bz2|gzip|zip FILENAME'
        echo 'EX : ./archiving.sh -c bz2 test'
        echo 'To decompress : ./archiving.sh -d , -d : decompress'
        echo './archiving.sh -d FILENAME'
        echo 'EX: ./archiving.sh -d test.bz2 '
        ;;
esac


