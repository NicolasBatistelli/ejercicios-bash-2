#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Uso: $0 'días'"
    exit 1
fi

dias="$1"
destino="archivos_antiguos"

mkdir -p $destino

find . -type f -mtime +"$dias" -exec mv {} "$destino" \;

echo "Archivos modificados hace más de $dias días han sido movidos a $destino"
