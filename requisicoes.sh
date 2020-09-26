#!/bin/bash
for ((a=1; a <= 10 ; a++))
do
echo "Enviando 100 pela $aª vez"
ab -n 1000 -c 100 https://www.guilhermerocha.tk/Projetos/wordpress/wordpress/
done
