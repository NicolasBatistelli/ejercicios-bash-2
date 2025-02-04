#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Uso: $0 archivo_log"
    exit 1
fi

log=$1

echo "Monitorizando $log..."
tail -f $log
