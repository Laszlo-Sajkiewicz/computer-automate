#/bin/bash

cd ~/movies

if [ "$1" != "-h" ]; then
	echo 'ok'
#Star wars
	st_1=$(ls *star*wars* | wc -l);
	st_2=$(ls *Star*Wars* | wc -l);
#Doctor Who
	DW_1=$(ls *Doctor*Who* | wc -l);
	DW_2=$(ls *doctor*who* | wc -l);

#Star wars
if [ $st_1 -ne 0 ]; then
	if [ ! -d /~/movies/Star_Wars ]; then
		mkdir ~/movies/Star_Wars 
		mv *star*wars* ~/movies/Star_Wars
	elif [ -d /~/movies/Star_Wars ]; then
		mv *star*wars* ~/movies/Star_Wars
	fi
elif [ $st_2 -ne 0  ]; then
	if [ ! -d /~/movies/Star_Wars ]; then
		mkdir ~/movies/Star_Wars 
		mv *Star*Wars*.* ~/movies/Star_Wars
	elif [ -d /~/movies/Star_Wars ]; then
		mv *Star*Wars*.* ~/movies/Star_Wars
	fi
#Doctor_Who
elif [ $DW_1 -ne 0 ]; then

		if [ ! -d /~/movies/Doctor_Who ]; then
			mkdir ~/movies/Doctor_Who 
			mv *Doctor*Who ~/movies/Doctor_Who
		elif [ -d /~/music ]; then
			mv *Doctor*Who ~/movies/Doctor_Who
		fi
elif [ $DW_2 -ne 0 ]; then

		if [ ! -d /~/movies/Doctor_Who ]; then
			mkdir ~/movies/Doctor_Who 
			mv *doctor*who ~/movies/Doctor_Who
		elif [ -d /~/music ]; then
			mv *doctor*who ~/movies/Doctor_Who
		fi


fi
if [ "$1" == "-h" ]; then
	 echo -e "\033[34m\033[45m USE :\033[0m "
	 echo 'Have a file called "movies"'
	 echo 'EX : ./cl_movies.sh'
fi
fi
