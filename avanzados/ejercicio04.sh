#!/bin/bash

if [ $# -ne 2 ]; then
    echo "Uso: $0 <usuario> <base_de_datos>"
    exit 1
fi

usuario=$1
base_de_datos=$2
archivo_backup="backup_$(date +'%Y-%m-%d_%H-%M-%S').sql"

echo "Realizando el backup de $base_de_datos"

mysqldump -u $usuario -p $base_de_datos > $archivo_backup

echo "Backup creado: $archivo_backup"