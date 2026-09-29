#!/bin/bash
#
# Naitab local muutuja mojo - lokaalne ei mojuta globaalset muutujat
#
test_ilma_local() {
 nimi="Mari"
}
test_ilma_local
echo "Ilma local: $nimi"
tervita() {
 local nimi="$1"
 echo "Funktsiooni sees (local): $nimi"
}
tervita "Anna"
echo "Parast funktsiooni valjakutset: $nimi"
