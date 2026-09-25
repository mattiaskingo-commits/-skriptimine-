#!/bin/bash
#
# Valjastab oonsa kandiku - ainult servad on tarnidega taidetud
#
echo -n "Sisesta ridade arv: "
read ridu
echo -n "Sisesta tarnide arv reas: "
read tarne
for (( i=1; i<=ridu; i++ )); do
 echo -n "$i. "
 if [[ $i -eq 1 || $i -eq $ridu ]]; then
 for (( j=1; j<=tarne; j++ )); do
 echo -n "* "
 done
 else
 for (( j=1; j<=tarne; j++ )); do
 if [[ $j -eq 1 || $j -eq $tarne ]]; then
 echo -n "* "
 else
 echo -n " "
 fi
 done
 fi
 echo ""
done
