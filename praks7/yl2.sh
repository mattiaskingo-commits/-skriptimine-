#!/bin/bash
#
# Valjastab kasutaja maaratud suurusega tarnide ruudu
#
echo -n "Sisesta ridade arv: "
read ridu
echo -n "Sisesta tarnide arv reas: "
read tarne
for (( i=1; i<=ridu; i++ )); do
 echo -n "$i. "
 for (( j=1; j<=tarne; j++ )); do
 echo -n "* "
 done
 echo ""
done
