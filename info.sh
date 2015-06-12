#!/bin/bash

#This script gives you information onto your computer

nb_ps=$(ps |wc -l);
MemTotal=$( cat  /proc/meminfo  | grep MemTotal | cut -c 14-28);
freemem=$( cat  /proc/meminfo  | grep MemFree | cut -c 14-28);
swapTotal=$(cat  /proc/meminfo  | grep SwapTotal | cut -c 14-28);
swapFree=$(cat  /proc/meminfo  | grep SwapTotal | cut -c 14-28);

if [[ "$1" == "-n" ]]; then
		echo 'Number of process :' $nb_ps
elif [[ "$1" == "-mem" ]]; then
		echo 'Memory total :' $MemTotal
		echo 'Free memory :' $freemem
elif [[ "$1" == "-swap" ]]; then
		echo 'Swap Total :' $swapTotal
		echo 'Free swap :' $swapFree
elif [[ "$1" == "-h" ]]; then
		echo -e "\033[34m\033[45m USE :\033[0m "
	 	echo ' -n : show the number of process'
	 	echo '-lsp : show all process running'
	 	echo '-s : show the size , EX: ./info.sh -s FILE'
	 	echo '-f : searches the named input files , EX : ./info.sh -f  TEXT FILE '
	 	echo '-i :  print  all  information'
	 	echo '-mem : Give somme informations about the memory'
	 	echo '-swap : Give somme informations about the swap'
fi