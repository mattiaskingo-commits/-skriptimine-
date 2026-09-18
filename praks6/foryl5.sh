#!/bin/bash
#
# Jagab stringi sonadeks kasutades IFS eraldajat
#
tekst="koer;kass;hiir"
IFS=";"
for sona in $tekst; do
  echo "Sona: $sona"
done
