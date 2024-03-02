#!/bin/bash

file=paginas.csv

echo "Pagina,Estatus" > $file
for pag in $(cat paginas)
do
#	echo "$pag"
	salida=$(curl -s -I "$pag" | sed -n '1p' | tail -1 | awk '{print $3" " $4}' | rev | cut -c4- | rev )
#	echo $salida
	if [ -z "$salida" ]
	then
		echo  "$pag,Fail" >> $file
	else
		echo  "$pag,OK" >> $file
	fi
done

column -s, -t $file
rm -rf $file
