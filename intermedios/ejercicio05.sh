#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <tamaño_en_MB>"
    exit 1
fi

tamanio=$1

find . -type f -size +"$tamanio"M -exec rm -v {} \;