#!/bin/bash

file="Accidentes_ags_2021.csv"

awk -F',' '{sum+=$25} END {print "La suma es:", sum}' "$file"