#!/bin/bash
#
# Valjastab kolmnurga - rea numbriga vordne arv tarne
#
echo -n "Sisesta ridade arv: "
read ridu
for (( i=1; i<=ridu; i++ )); do
 echo -n "$i. "
 for (( j=1; j<=i; j++ )); do
 echo -n "* "
 done
 echo ""
done
