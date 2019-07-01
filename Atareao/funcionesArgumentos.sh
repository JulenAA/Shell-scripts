#!/bin/bash

funcion1(){
	echo $0
	echo $#
	echo $@
	echo $$
	ans=$(($1+$2))
	echo $?
	echo $ans
	echo $?
}

echo

funcion1 2 2 3
echo $?

echo

funcion2(){
	local resultado='resultado'
	echo "$resultado"
}

resultado=$(funcion2)
echo $resultado

echo


