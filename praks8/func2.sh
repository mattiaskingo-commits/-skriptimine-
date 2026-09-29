#!/bin/bash
#
# Naitab funktsiooni argumente - $1, $2, $#, "$@"
#
tervita() {
 echo "Tere, $1!"
}
tervita "Mari"
tervita "Juri"
echo ""
kasutaja_info() {
 echo "Nimi: $1"
 echo "Vanus: $2"
}
kasutaja_info "Mari" 18
echo ""
kontrolli() {
 echo "Argumentide arv: $#"
}
kontrolli yks kaks kolm
echo ""
naita() {
 echo "Funktsioonile anti:"
 for argument in "$@"; do
 echo "$argument"
 done
}
naita "yks" "kaks" "kolm"
