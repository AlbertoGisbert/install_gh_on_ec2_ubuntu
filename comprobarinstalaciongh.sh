#!/bin/bash

# Función para comprobar si el usuario tiene privilegios de root
comprobar() {
    if [ "$(id -u)" -eq 0 ]; then
        return 1  # Si el UID es 0 (root), devuelve 1
    else
        return 0  # Si no es root, devuelve 0
    fi
}

# Llamada a la función
comprobar

# Comprobamos el valor de retorno de la función
if [ $? -eq 1 ]; then
    echo "Estás ejecutando el script como root."
else
    echo "No tienes privilegios de root."
fi
