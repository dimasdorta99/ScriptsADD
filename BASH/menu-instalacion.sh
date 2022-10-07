#!/bin/bash

until [ "$opcion" != "" ]
do
		echo "1. Instalar Cowsay"
		echo "2. Instalar Sl"
		echo "3. Instalar Ifconfig"
		echo "4. Salir"
		read -p "Elige una de las siguientes opciones: " opcion

		case "$opcion" in
				1)
						echo "Has elegido instalar Cowsay"
						if which cowsay > /dev/null
						then
								echo "Cowsay está instalado, quiere borrarlo?"
								read -p "Si o no?: " sino
								case "$sino" in
										Si|si)
												echo "Desinstalando cowsay"
												sudo apt remove -y cowsay
												;;
										No|no)
												exit 1
												;;
								esac
						else
								read -p "Desea instalarlo, especifique si o no: " no
								case "$no" in
										Si|si)
												echo "Instalando cowsay"
												sudo apt install -y cowsay
												;;
										No|no)
												exit 1
												;;
								esac
						fi
						;;
				2)
						echo "Has seleccionado instalar Sl"
						if which sl > /dev/null
						then
								echo "¿El programa ya está instalado, quiere borrarlo?"
								read -p "Si o no?: " sino
								case "$sino" in
										Si|si)
												echo "Desinstalando Sl"
												sudo apt remove -y sl
												;;
										No|no)
												exit 1
												;;
								esac
						else
								read -p "Quieres instalar Sl, si o no?: " no
								case "$no" in
										Si|si)
												echo "Instalando Sl"
												sudo apt install -y sl
												;;
										No|no)
												exit 1
												;;
								esac
						fi
						;;
				3)

						echo "Has seleccionado instalar ifconfig"
						if which sl > /dev/null
						then
								echo "¿El programa ya está instalado, quiere borrarlo?"
								read -p "Si o no?: " sino
								case "$sino" in
										Si|si)
												echo "Desinstalando ifconfig"
												sudo apt remove -y net-tools
												;;
										No|no)
												exit 1
												;;
								esac
						else
								read -p "Quieres instalar ifconfig, si o no?: " no
								case "$no" in
										Si|si)
												echo "Instalando ifconfig"
												sudo apt install -y net-tools
												;;
										No|no)
												exit 1
												;;
								esac
						fi
						;;
				4)
						echo "Terminando el script"
						exit 1
						;;					
		esac
done