#!/bin/bash
declare -a numeros=(2 4 6 8 10 20)
suma=0
for num in "${numeros[@]}"
do
	suma=$((suma+num))
done
echo $suma
