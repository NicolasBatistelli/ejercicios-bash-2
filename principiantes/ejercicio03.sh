#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <archivo>"
    exit 1
if

archivo=$1

if [ ! -f $archivo ]; then
    echo "El archivo $archivo no existe"
    exit 1
fi

wc -l "$archivo"