#!/bin/bash
#
# Kysib numbreid kuni kasutaja sisestab 0, jatab negatiivsed vahele
#
while true; do
 echo -n "Sisesta number (0 lopetab): "
 read num
 if [[ $num -eq 0 ]]; then
 echo "Lopetan"
 break
 fi
 if [[ $num -lt 0 ]]; then
 echo "Negatiivne number, jatan vahele"
 continue
 fi
 echo "Sisestasid: $num"
done
