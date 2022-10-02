#!/bin/bash
read -p "Introduce el largo " largo
read -p "Introduce el ancho "  ancho
echo " El área del rectángulo es: "
expr $largo \* $ancho
