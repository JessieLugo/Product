#!/bin/bash

file="Accidentes_ags_2021.csv"

echo "ID                     Automovil"
echo "____________________________________"
grep -i "ABASTOS" "$file" | awk -F ',' '{print $1 "," $13}' | column -s', ' -t