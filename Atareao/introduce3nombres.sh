#/bin/bash

echo Dime 3 nombres
read -a nombres
for i in ${nombres[@]}
do
	echo $i
done

