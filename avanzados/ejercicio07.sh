#!/bin/bash

umbral=80
#$3 es la memoria usada y $2 es la memoria total
uso_actual=$(free | awk '/Mem:/ {printf "%.2f", $3/$2 * 100.0}')

#bc -l evalua la comparacion y retorna 1 si es verdadero 0 si es falso
if (( $(echo "$uso_actual > $umbral" | bc -l) )); then
    echo "Alerta: Uso de memoria en $uso_actual%" | mail -s "Alerta de Memoria" usuario@correo.com
fi
