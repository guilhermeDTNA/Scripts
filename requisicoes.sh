#!/bin/bash
for ((a=1; a <= 1000 ; a++))
do
echo "Enviando 100 pela $aª vez"
ab -n 10000 -c 1000 localhost:8001/
done
