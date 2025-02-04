#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Uso: $0 <extension>"
    exit 1
fi

extension=$1

cantidad=$(ls *.$extension 2>/dev/null | wc -l)

echo "Hay $cantidad archivos con la extension $extension en el directorio actual."