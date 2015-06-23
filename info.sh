#!/bin/bash

MemTotal=$( cat  /proc/meminfo  | grep MemTotal | cut -c 14-28);
freemem=$( cat  /proc/meminfo  | grep MemFree | cut -c 14-28);
mem_av=$(cat  /proc/meminfo  | grep MemAvailable | cut -c 14-28);
swapTotal=$(cat  /proc/meminfo  | grep SwapTotal | cut -c 14-28);
swapFree=$(cat  /proc/meminfo  | grep SwapTotal | cut -c 14-28);
name=$(cat /proc/cpuinfo | grep "model name" | cut -c 14-57 | uniq);
nb_cpu=$(cat /proc/cpuinfo | grep "cpu cores" | cut -c 13-17 | uniq);
cpu_mode=$(lscpu | grep "CPU op-mode" | cut -c 16-40);
archi=$(lscpu | grep Architecture | cut -c 20-30);
swapCached=$(cat /proc/meminfo | grep SwapCached | cut -c 20-29);
option="${1}";

case ${option} in 
	-mem) 
		echo -e '\033[1;31;40mMemory total : \033[0m' $MemTotal
		echo -e '\033[1;31;40mFree memory : \033[0m' $freemem
		echo -e '\033[1;31;40mMemory available :\033[0m' $mem_av
	-swap)
		echo -e '\033[1;31;40mSwap Total :\033[0m' $swapTotal
		echo -e '\033[1;31;40mFree swap :\033[0m' $swapFree
		echo -e '\033[1;31;40mSwap cached :\033[0m' $swapCached
	-cpu)
		echo -e '\033[1;31;40mName of cpu :\033[0m' $name
		echo -e '\033[1;31;40mNumber of cpu cores :\033[0m' $nb_cpu
		echo -e '\033[1;31;40mCPU op-mode :\033[0m' $cpu_mode
		echo -e '\033[1;31;40mArchitecture :\033[0m' $archi
	*)
		echo -e "\033[34m\033[45m USE :\033[0m "
	 	echo '-mem : Give some informations about the memory'
	 	echo '-swap : Give some informations about the swap'
	 	echo '-cpu : Give some information about cpu'
esac