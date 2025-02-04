#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Uso: $0 <directorio_archivos> <directorio_copia>"
    exit 1
fi

directorio_actual=$1
directorio_backup=$1

cp -r $directorio_actual $directorio_backup

echo "Archvos copiados al directorio $directorio_backup"