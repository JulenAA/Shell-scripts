#!/bin/bash
# menuMP3.sh
IFS=$'\n'
select MP3 in $(find /home/julen -iname ".mp3"); do
	echo "Voy a reproducir el mp3: " $MP3
	# mpg321 $MP3 $> /dev/null
done
