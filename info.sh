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
elif [[ "$1" =="-h" ]]; then
	 echo -e "\033[34m\033[45m USE :\033[0m "
	 echo ' -n : show the number of process'
	 echo '-lsp : show all process running'
	 echo '-s : show the size , EX: ./info.sh -s FILE'
	 echo '-f : searches the named input files , EX : ./info.sh -f  TEXT FILE '
	 echo '-i :  print  all  information'
fi