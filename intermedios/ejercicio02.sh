#!/bin/bash

nombre_archivo="archivo_$(date +'%Y-%m-%d_%H-%M-%S').txt"

touch $nombre_archivo

echo "Archivo creado"