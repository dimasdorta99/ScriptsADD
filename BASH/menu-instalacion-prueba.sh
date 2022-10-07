#!/bin/bash

until [ "$texto" != "" ]
do
	echo "1. Cowsay"
	echo "2. SL"
	echo "3. Ifconfig"
	echo "4. Salir"
read -p "Elija una de las opciones: " n
case "$texto" in
1)
	if [ -x "$texto" ];
then
	sudo apt remove -y cowsay
else
	echo "Instalando cowsay"
	sudo apt install -y cowsay
	fi
	;;
2)
	echo "Instalando SL"
	sudo apt install -y sl
	;;
3)
	echo "Instalando ifconfig"
	sudo apt install -y net-tools
	;;
4)
	echo "Saliendo"
	exit 1
	;;
esac
done
