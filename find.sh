#!/bin/bash

path="/var/log/"
W="Jessie_Jose"

cd "$path"
for file in *
do
#	echo "$file"
#	cat "$file" | grep -i "$W"
	grep -Rill "$W" "$file"
done
