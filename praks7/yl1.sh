#!/bin/bash
#
# Valjastab 5x5 tarnide ruudu koos rea numbriga
#
for (( i=1; i<=5; i++ )); do
 echo -n "$i. "
 for (( j=1; j<=5; j++ )); do
 echo -n "* "
 done
 echo ""
done
