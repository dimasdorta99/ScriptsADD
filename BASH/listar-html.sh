#!/bin/bash
#numero=0
#while read linea
#do
#	numero=$(($numero + 1))
#	echo "$numero : $linea"
#	usuario=$(echo $linea | cut -d: -f1)
#done < /etc/passwd
#echo "Hay $numero usuarios en el sistema"

informe=usuarios.html
echo "<!DOCTYPE html>" > $informe
echo "<html>" >> $informe
echo "<head>" >> $informe
echo "   <title>Usuarios</title>" >> $informe
echo "</head>" >> $informe
echo "<body>" >> $informe
echo "<table>" >> $informe
echo "		<tr><th>Nombre</th>Home</td>" >> $informe
while read linea
do
	usuario=$(echo $linea | cut -d: -f1)
	home=$(echo $linea | cut -d: -f6)
	echo " 		<tr><td>$usuario</td><td>$home</td></tr>" >> $informe
done < /etcc/passwd
echo "</table>" >> $informe
echo "</body>" >> $informe
echo "</html>" >> $informe

firefox $informe &
