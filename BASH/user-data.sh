#!/bin/bash

	user=$1

	if [ -z "$user" ]
	then
		read -p "Introduce tu nombre de usuario " user
		echo "Tu usuario actual es  $user "
	fi
	if [ -z "$user" ]
	then
		echo "Introduce un nombre de usuario válido"
	exit 1	
	fi

	if id "$user" >/dev/null 2>&1;
	then
		nombre=$(grep -w  $user /etc/passwd | cut -d ":" -f 1)
		id1=$(grep -w $user /etc/passwd | cut -d ":" -f 3)
		id2=$(grep -w $user /etc/passwd | cut -d ":" -f 4)
		home=$(grep -w $user /etc/passwd | cut -d ":" -f 6)
		shell=$(grep -w $user /etc/passwd | cut -d ":" -f 7)
		echo "Nombre: $nombre"
		echo "UID: $id1"
		echo "GID: $id2"
		echo "Home: $home"
		echo "Shel: $shell" 
	else
		echo "$user no existe"
		exit 1
	fi
