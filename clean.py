#!/usr/bin/python
# -*-coding:encodage -*
import os

 # We count the number of images for each type of image
pic_1=os.popen("ls *.jpg | wc -l", "r").read()
pic_2=os.popen("ls *.png | wc -l","r").read()

# We count the number of music for each type of music
music_1=os.popen("ls *.mp3 | wc -l","r").read()
music_2=os.popen("ls *.aac | wc -l","r").read()

# We count the number of movies for each type of movie
movie_1=os.popen("ls *.avi | wc -l","r").read()
movie_2=os.popen("ls *.wmv | wc -l","r").read()
movie_3=os.popen("ls *.mp4 | wc -l","r").read()
movie_4=os.popen("ls *.mov | wc -l","r").read()
movie_5=os.popen("ls *.mkv | wc -l","r").read()
