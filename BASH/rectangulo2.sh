#!/bin/bash
##Calcular el área de un rectángulo.
ancho=$1
alto=$2
area=$(expr $ancho \* $alto)
echo $area
