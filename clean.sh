#!/bin/bash

#   This simple shell script can be used for cleaning you download folder.
#   It will move your pictures, music or movies into the correct folder.

#   If the user doesn't give any parameter

if [ "$1" == "" ]; then

#   If the user have the download directory
    if [ -d /~/download ]; then
        cd ~/download

#   We count the number of images for each type of image
    	pic_1=$(ls *.jpg | wc -l);
    	pic_2=$(ls *.png | wc -l);

#   We count the number of music for each type of music
    	music_1=$(ls  *.mp3 | wc -l);
    	music_2=$(ls  *.aac | wc -l);

#   We count the number of movies for each type of movie
	    movie_1=$(ls  *.avi | wc -l);
	    movie_2=$(ls  *.wmv | wc -l);
	    movie_3=$(ls  *.mp4 | wc -l);
	    movie_4=$(ls  *.mov | wc -l);
	    movie_5=$(ls  *.mkv | wc -l);
        #PICTURE
        if [ $pic_1 -ne 0 ]; then
	        #JPG
	        if [ ! -d /~/picture ]; then
		        mkdir ~/picture 
		        mv *.jpg ~/picture
	        elif [ -d /~/picture ]; then
		        mv *.jpg ~/picture
	        fi
        elif [ $pic_2 -ne 0  ]; then
	        #PNG
	        if [ ! -d /~/picture ]; then
		        mkdir ~/picture 
		        mv *.png ~/picture
	        elif [ -d /~/picture ]; then
		        mv *.png ~/picture
	        fi
        #MUSIC
        elif [ $music_1 -ne 0 ]; then
	        #MP3
	        if [ ! -d /~/music ]; then
		        mkdir ~/music 
		        mv *.mp3 ~/music
	        elif [ -d /~/music ]; then
		        mv *.mp3 ~/music
	        fi
        elif [ $music_2 -ne 0 ]; then
	        #AAC
	        if [ ! -d /~/music ]; then
		        mkdir ~/music 
		        mv *.aac ~/music
	        elif [ -d /~/music ]; then
		        mv *.aac ~/music
	        fi
        #MOVIE
        elif [ $movie_1 -ne 0 ]; then
	        #AVI
	        if [ ! -d /~/movie ]; then
		        mkdir ~/movie 
		        mv *.avi ~/movie
	        elif [ -d /~/movie ]; then
		        mv *.avi ~/movie
	        fi
        elif [ $movie_2 -ne 0 ]; then
	        #WMV
	        if [ ! -d /~/movie ]; then
		        mkdir ~/movie 
		        mv *.wmv ~/movie
	        elif [ -d /~/movie ]; then
		        mv *.wmv ~/movie
	        fi
        elif [ $movie_3 -ne 0 ]; then
	        #MP4
            if [ ! -d /~/movie ]; then
	            mkdir ~/movie 
	            mv *.mp4 ~/movie
            elif [ -d /~/movie ]; then
	            mv *.mp4 ~/movie
            fi
        elif [ $movie_4 -ne 0 ]; then
	        #MOV 
	        if [ ! -d /~/movie ]; then
		        mkdir ~/movie 
		        mv *.mov ~/movie
	        elif [ -d /~/movie ]; then
		        mv *.mov ~/movie
	        fi
	 elif [ $movie_5 -ne 0 ]; then
	        #MKV 
	        if [ ! -d /~/movie ]; then
		        mkdir ~/movie 
		        mv *.mkv ~/movie
	        elif [ -d /~/movie ]; then
		        mv *.mkv ~/movie
	        fi
        fi

#   If the user doesn't have download folder
    else
        echo "You don't have ~/download folder";
    fi

#   If the user give the parameter -h 

elif [ "$1" == "-h" ]; then
     echo -e "\033[34m\033[45m USE :\033[0m "
     echo 'Have a file called "download"'
     echo 'EX : ./clean.sh'
fi

