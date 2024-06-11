#!/bin/bash

# Ruta al archivo donde se guardarán las horas
FILE="save_hour.txt"

# Bucle infinito
while true
do
    # Obtiene la hora actual y la guarda en el archivo
    date +"%H:%M:%S" >> "$FILE"
    
    # Espera 5 segundos antes de repetir
    sleep 5
done
