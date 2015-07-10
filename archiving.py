#!/usr/bin/python
# -*-coding:encodage -*
import os

d_gzip=os.popen("ls | grep *.gz | wc -l","r").read()
d_bz2=os.popen("ls | grep *.tar.bz2 | wc -l","r").read()
d_zip=os.popen("ls | grep *.zip | wc -l","r").read()
