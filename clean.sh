#!/bin/bash

#clean the download folder
cd ~/download;

arg1=$(ls  *.jpg | wc -l);
arg2=$(ls  *.mp3 | wc -l);
arg3=$(ls  *.avi | wc -l);
arg4=$(ls  *.wmv | wc -l);
ls
if [ $arg1 -ne 0 ]; then
	echo 'ok'
	if [ ! -d /~/picture ]; then
		mkdir ~/picture #create a folder called picture
		mv *.jpg ~/picture
	elif [ -d /~/picture ]; then
		mv *.jpg ~/picture
	fi
elif [ $arg2 -ne 0 ]; then
		if [ ! -d /~/music ]; then
			mkdir ~/music # create a folder called music
			mv *.mp3 ~/music
		elif [ -d /~/music ]; then
			mv *.mp3 ~/music
		fi
elif [ $arg3 -ne 0 ]; then
		if [ ! -d /~/movie ]; then
			mkdir ~/movie # create a folder called movie
			mv *.avi ~/movie
		elif [ -d /~/movie ]; then
			mv *.avi ~/movie
		fi
elif [ $arg4 -ne 0 ]; then
		if [ ! -d /~/movie ]; then
			mkdir ~/movie 
			mv *.wmv ~/movie
		elif [ -d /~/movie ]; then
			mv *.wmv ~/movie
		fi
fi
ls ~/