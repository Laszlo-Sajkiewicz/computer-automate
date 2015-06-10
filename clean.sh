#!/bin/bash

#clean the download folder
cd ~/download;

#picture
pic_1=$(ls *.jpg | wc -l);
pic_2=$(ls *.png | wc -l);
#music
music_1=$(ls  *.mp3 | wc -l);
#movie
movie_1=$(ls  *.avi | wc -l);
movie_2=$(ls  *.wmv | wc -l);


#PICTURE
if [ $pic_1 -ne 0 ] || [ $pic_2 -ne 0 ]; then
	echo 'ok'
	if [ ! -d /~/picture ]; then
		mkdir ~/picture #create a folder called picture
		mv *.jpg ~/picture
		mv *.png ~/picture
	elif [ -d /~/picture ]; then
		mv *.jpg ~/picture
		mv *.png ~/picture
	fi

#MUSIC
elif [ $music_1 -ne 0 ]; then
		if [ ! -d /~/music ]; then
			mkdir ~/music # create a folder called music
			mv *.mp3 ~/music
		elif [ -d /~/music ]; then
			mv *.mp3 ~/music
		fi
#MOVIE
elif [ $movie_1 -ne 0 ]; then
		if [ ! -d /~/movie ]; then
			mkdir ~/movie # create a folder called movie
			mv *.avi ~/movie
		elif [ -d /~/movie ]; then
			mv *.avi ~/movie
		fi
elif [ $movie_2 -ne 0 ]; then
		if [ ! -d /~/movie ]; then
			mkdir ~/movie 
			mv *.wmv ~/movie
		elif [ -d /~/movie ]; then
			mv *.wmv ~/movie
		fi
fi
