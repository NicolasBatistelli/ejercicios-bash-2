#!/bin/bash

echo "Generando reporte de uso de CPU..."
#-b ejecuta el comando sin interfaz interactiva
#-n 1 indica que el comando se va a ejecutar solamente una vez y despues sale
top -b -n 1 | head -20 > reporte_cpu.txt
echo "Reporte guardado en 'reporte_cpu.txt'."
