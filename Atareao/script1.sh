#!/bin/bash
# Script que se utiliza en funcionSource.sh
suma(){
	local resultado=$(($1+$2))
	echo $resultado
}

funcionArgumentos(){
        if [ $# -gt 0 ]
        then
                echo Con argumentos
        else
                echo Sin argumentos
        fi
}


