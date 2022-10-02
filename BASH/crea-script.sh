#!/bin/bash
##Si no pasamos parámetro con el nombre, falla y termina.
##Si existe (ya sea un fichero/directorio), falla y termina
##Creamos el script con el nombre indicado por parámetro,con el siguiente contenido "#!/bin/bash"
##Le asigna permisos de ejecución "+x"
##Abre el script con "nano" para empezar a editarlo.

nombre=$1
if [ -z  "$nombre" ]
then
	echo "Debe especificar un nombre"
	exit 1
fi
if [ ! -e "$nombre" ]
then
	echo "Creando directorio $nombre"
	touch $nombre
elif [ -f $nombre ]
then
	echo "$nommbre ya existe"
	exit 1
fi
chmod +x $nombre
echo "#!/bin/bash" > $nombre
nano $nombre
