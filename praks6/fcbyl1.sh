#!/bin/bash
#
# Loendab 1 kuni 10, katkeb break abil kui vaartus on 7
#
for i in {1..10}; do
 if [[ $i -eq 7 ]]; then
 echo "Katkestan tsykli, kuna i=7"
 break
 fi
 echo "i = $i"
done
