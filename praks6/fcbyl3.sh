#!/bin/bash
#
# Pesastatud tsyklid, break 2 katkestab moodmad tsyklid korraga
#
for i in {1..5}; do
 for j in {1..5}; do
 if [[ $j -eq 5 ]]; then
 echo "j joudis 5-ni, katkestan moodmad tsyklid"
 break 2
 fi
 echo "i=$i j=$j"
 done
done
echo "Tsyklid lopetatud"
