#!/bin/bash
aleatorio=$(( $RANDOM % 100 + 1 ))

echo "Adivina el número del 1 al 100"
intento=0

while [ "0$respuesta" -ne $aleatorio ] ; do
        read respuesta
        let intento=intento+1
        [ "0$respuesta" -lt $aleatorio ] && echo "El número es mayor"
        [ "0$respuesta" -gt $aleatorio ] && echo "El número es menor"
done
if which figlet > /dev/null
then
figlet acertaste
echo "Número de intentos: $intento "
exit 0
else
echo "figlet no está instalado :( pero acertaste!"
echo "Número de intentos: $intento "
exit 1

fi


