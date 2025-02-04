#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Uso: $0 (cifrar|descifrar) archivo"
    exit 1
fi

accion=$1
archivo=$2

if [ $accion == "cifrar" ]; then
    gpg --output "$archivo.gpg" --encrypt --recipient usuario@example.com "$archivo"
    echo "Archivo cifrado: $archivo.gpg"
elif [ $accion == "descifrar" ]; then
    gpg --output "${archivo%.gpg}" --decrypt "$archivo"
    echo "Archivo descifrado: ${archivo%.gpg}"
else
    echo "Opción no válida. Usa 'cifrar' o 'descifrar'."
fi
