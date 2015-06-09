#!/bin/bash

# range les film doctor who dans le bon repertoire et les musiques dans music
cd ~/download;

arg1=$(ls | grep Doctor | wc -l );
arg2=$(ls | grep doctor | wc -l );
arg3=$(ls | grep *.mp3 | wc -l);

if [ $arg1 -ne 0 ] ; then
	 mv Doctor.* ~/movie
	elif [ $arg2 -ne 0 ]; then
		mv doctor.* ~/movie
	elif [ $arg3 -ne 0 ]; then
		mv *.mp3 ~/music
fi