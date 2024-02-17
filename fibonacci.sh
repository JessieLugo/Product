#!/bin/bash

fibonacci() {
    n=$1

    if ((n <= 0)); then
        echo "[]"
    elif ((n == 1)); then
        echo "[0]"
    elif ((n == 2)); then
        echo "[0, 1]"
    else
        fib_sequence=(0 1)
        i=2

        while ((i < n)); do
            next_number=$((fib_sequence[i-1] + fib_sequence[i-2]))
            fib_sequence+=($next_number)
            ((i++))
        done

        echo ${fib_sequence[*]}
    fi
}

echo "Ingrese el número de elementos de la serie de Fibonacci que desea generar:"
read num

fibonacci $num
