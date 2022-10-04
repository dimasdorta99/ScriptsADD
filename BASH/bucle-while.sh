#!/bin/bash
a=1
while [[ $a -le 10 ]]
do
	echo "Iteración $a"
	a=$(expr $a + 1) ##Para ahorrarte expr puedes poner (($a +1))
done
##[ ... ] = test
##[[ ... ]] = test
##$(( ... )) = expr
