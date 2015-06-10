#!/bin/bash

if [[ "$1" == "-arch" ]]; then
	 echo -e "\033[34m\033[45m USE :\033[0m "
	 echo 'To compress : ./archiving.sh -c , -c : compress'
	 echo './archiving.sh -c bz2|gzip|zip FILENAME'
	 echo 'EX : ./archiving.sh -c bz2 test'
	 echo 'To decompress : ./archiving.sh -d , -d : decompress'
	 echo './archiving.sh -d FILENAME'
	 echo 'EX: ./archiving.sh -d test.bz2 '
elif [[ "$1" == "-cl" ]]; then
	 echo -e "\033[34m\033[45m USE :\033[0m "
	 echo 'Have a file called "download"'
	 echo 'EX : ./clean.sh'
elif [[ "$1" == "-info" ]]; then
	 echo -e "\033[34m\033[45m USE :\033[0m "
	 echo ' -n : show the number of process'
	 echo '-lsp : show all process running'
	 echo '-s : show the size , EX: ./info.sh -s FILE'
	 echo '-f : searches the named input files , EX : ./info.sh -f  TEXT FILE '
	 echo '-i :  print  all  information'
fi