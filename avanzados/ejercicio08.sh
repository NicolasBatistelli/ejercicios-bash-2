#!/bin/bash

while true; do
    echo "Seleccione una opción:"
    echo "1. Mostrar fecha"
    echo "2. Listar archivos"
    echo "3. Salir"
    read -p "Opción: " opcion

    case $opcion in
        1) date ;;
        2) ls -lh ;;
        3) echo "Saliendo..."; exit 0 ;;
        *) echo "Opción inválida." ;;
    esac
done
