#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Uso: $0 archivo_usuarios"
    exit 1
fi

archivo=$1

#IFS= hace que read no elimine espacios en blanco
#read lee la linea del archivo y la guarda en la variable usuario y -r evita que \ sea tomado como caracter especial
#-m de useradd crea el usuario con directorio home
while IFS= read -r usuario; do
    if id $usuario &>/dev/null; then
        echo "El usuario $usuario ya existe."
    else
        sudo useradd -m $usuario && echo "Usuario $usuario creado."
    fi
done < $archivo

