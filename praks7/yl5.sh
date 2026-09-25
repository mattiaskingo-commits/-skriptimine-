#!/bin/bash
#
# Valjastab kombineeritud kujundi o ja tarnidega
#
echo -n "Sisesta ridade arv: "
read ridu
for (( i=1; i<=ridu; i++ )); do
 echo -n "$i. "
 for (( j=1; j<=ridu-i; j++ )); do
 echo -n "o "
 done
 for (( j=1; j<=i; j++ )); do
 echo -n "* "
 done
 echo ""
done
