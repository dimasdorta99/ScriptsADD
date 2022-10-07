#!/bin/bash
directorio=$1
[ -z $directorio ] && directorio=.
for fichero in $directorio/*
do
    if [ -f $fichero]
    then
        echo "$fichero es un fichero"
    elif [ -d $fichero ]
    then
        echo "$fichero es un directorio"
    else
        echo "$fichero no sé lo que es"
    fi
done