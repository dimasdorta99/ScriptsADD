#!/bin/bash
numero=0
while read linea
do
	numero=$(($numero + 1))
	echo "$numero : $linea"
	usuario=$(echo $linea | cut -d: -f1)
done < /etc/passwd
echo "Hay $numero usuarios en el sistema"
