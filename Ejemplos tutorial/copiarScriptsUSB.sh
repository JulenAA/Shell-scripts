#!/bin/bash
# copiarScriptsUSB
clear
IFS=$'\n'
if ! [ -d /media/julen/Transcend/scripts ]; then
	mkdir /media/julen/Transcend/Scripts
fi
for PROGRAMA in $(find '/home/julen/GitHub Julen/Shell scripts' -iname "*.sh" 2> /dev/null ); do
	echo "Copiando el script :" $PROGRAMA
	cp $PROGRAMA /media/julen/Transcend/Scripts
done

