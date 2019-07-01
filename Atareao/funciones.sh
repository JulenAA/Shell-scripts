#!/bin/bash
function mi_primera_funcion(){
	echo Hola Mundo
}

mi_primera_funcion
echo

var1='fuera'
var2='fuera'

funcion_ambito(){
	var1='dentro'
	local var2='dentro'
	var3='dentro'
	local var4='dentro'
	echo $var1 $var2 $var3 $var4
}

echo $var1 $var2
funcion_ambito
echo $var1 $var2 $var3 $var4

echo
