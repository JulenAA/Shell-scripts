#!/bin/bash
echo DECLARE
declare -ir entero=10
echo "Este es un entero de valor $entero"

#entero=10.5
#./matematicas.sh: línea 5: entero: variable de sólo lectura

echo

echo EXPR
echo $(expr 1 + 1)
echo $(expr 5 \* 5)
echo

echo LET
let z=25; echo $z
let z++; echo $z
let z=z+10; echo $z
echo

echo DOBLES PARENTESIS
((z=25)); echo $z
((z++)); echo $z
((z=z+10)); echo $z
echo $((z=25));
echo $((z++));
echo $((z=z+10));
echo

echo BC
echo '4.1+5.2' | bc
echo '4.1*5.2' | bc
z=$(echo '4.1+5.2' | bc); echo $z
z=$(echo '4.1*5.2' | bc); echo $z
echo 'var=10;++var' | bc
echo 'var=10;var++' | bc
echo -Comparaciones
echo '2 > 1' | bc
echo

