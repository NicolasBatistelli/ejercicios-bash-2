#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <patron_a_buscar>"
    exit 1
fi

patron_a_buscar=$1

#-r busca recursivamente, -n muestra el numero de linea en donde se encontro el patron
grep -rn "$patron_a_buscar" .