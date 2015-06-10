#!/bin/bash

#This script gives you information onto your computer

nb_ps=$(ps |wc -l);



if [[ "$1" == "-n" ]]; then
	echo 'Number of process :' $nb_ps
elif [[ "$1" == "-lsp" ]]; then
	ps 
elif [[ "$1" == "-s"  ]]; then
	du -h $2 # $2 : folder
elif [[ "$1" == "-f" ]]; then
	grep $2 $3 # $2 : FILENAME ; $3 : TEXT
elif [[ "$1" == "-i" ]]; then
	uname -a 
fi