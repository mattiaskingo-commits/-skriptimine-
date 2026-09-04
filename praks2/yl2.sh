#!/bin/bash
# Skript valjastab tervituse, mille nimi soltub kaivitavast kasutajast

echo -n "Tere, "
nimi=$(whoami)
nimi="${nimi^}"
echo "$nimi!"
