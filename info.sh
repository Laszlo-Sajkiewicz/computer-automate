#!/bin/bash

MemTotal=$( cat  /proc/meminfo  | grep MemTotal | cut -c 14-28);
freemem=$( cat  /proc/meminfo  | grep MemFree | cut -c 14-28);
mem_av=$(cat  /proc/meminfo  | grep MemAvailable | cut -c 14-28);
swapTotal=$(cat  /proc/meminfo  | grep SwapTotal | cut -c 14-28);
swapFree=$(cat  /proc/meminfo  | grep SwapTotal | cut -c 14-28);
name=$(cat /proc/cpuinfo | grep "model name" | cut -c 14-57 | uniq);
nb_cpu=$(cat /proc/cpuinfo | grep "cpu cores" | cut -c 13-17 | uniq);
cpu_mode=$(lscpu | grep "CPU op-mode" | cut -c 16-40);
archi=$(lscpu | grep Architecture | cut -c 20-30)
if [[ "$1" == "-mem" ]]; then
		echo 'Memory total :' $MemTotal
		echo 'Free memory :' $freemem
		echo 'Memory available :' $mem_av
elif [[ "$1" == "-swap" ]]; then
		echo 'Swap Total :' $swapTotal
		echo 'Free swap :' $swapFree
elif [[ "$1" == "-cpu" ]]; then
			echo 'Name of cpu :' $name
			echo 'Number of cpu cores :' $nb_cpu
			echo 'CPU op-mode :' $cpu_mode
			echo 'Architecture :' $archi
elif [ "$1" == "-h" ] || [ "$1" == "" ]; then
		echo -e "\033[34m\033[45m USE :\033[0m "
	 	echo '-mem : Give somme informations about the memory'
	 	echo '-swap : Give somme informations about the swap'
fi