#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Uso: $0 destinatario archivo_adj"
    exit 1
fi

destinatario=$1
adjunto=$2
asunto="Archivo adjunto"
mensaje="Adjunto el archivo solicitado."

echo $mensaje | mail -s $asunto -A $adjunto $destinatario

echo "Correo enviado a $destinatario con el archivo $adjunto"
