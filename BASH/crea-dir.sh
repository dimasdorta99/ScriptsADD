#!/bin/bash
directorio=$1
## -z comprueba si el directorio está vacío
## Comprueba si $directorio está vacío
if [ -z "$directorio" ]
then
	echo "Debe especificar un directorio"
	exit 1
	## 1 significa que ha ido mal y lo devuelve,0 que va bien.
fi
## Comprobar si el directorio existe y es un directorio

if [ -f $directorio ]
then
	echo "$directorio no es un directorio"
	exit 1

elif [ -d $directorio ]
then
	echo "Creando el directorio $directorio"
	mkdir $directorio
else
	echo "$directorio ya existe"


fi
## Le asigna los permisos 700
chmod 700 $directorio
