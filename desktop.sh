#!/bin/bash

#range le bureau

arg1=$(ls | grep *.jpg | wc -l);
arg2=$(ls | grep *.mp3 | wc -l);

if [$arg1 -ne 0]; then
	if [! -d /~/picture ]; then
		mkdir picture #create a folder called picture
		move *.jpg ~/picture
	elif [ -d /~/picture ]; then
		move *.jpg ~/picture
	fi
elif [$arg2 -ne 0]; then
		if [! -d /~/music ]; then
			mkdir music # create a folder called music
			move *.mp3 ~/music
		elif [ -d /~/music ]; then
			move *.mp3 ~/music
		fi
fi