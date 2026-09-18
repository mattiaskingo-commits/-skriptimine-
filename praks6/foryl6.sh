#!/bin/bash
#
# Loob failid ja valjastab koik .txt failide nimed kataloogis
#
touch a.txt b.txt c.txt
for fail in *.txt; do
  echo "Leidsin faili: $fail"
done
