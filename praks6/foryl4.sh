#!/bin/bash
#
# Valjastab koik kasutajanimed failist /etc/passwd
#
for kasutaja in $(cut -d: -f1 /etc/passwd); do
  echo "Kasutaja: $kasutaja"
done
