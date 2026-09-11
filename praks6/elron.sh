#!/bin/bash
#
# Elroni rongiinfo - kuvab valitud marsruudi valjumisajad
#
echo "ELRONI RONGIINFO"
echo ""
echo "Vali marsruut:"
echo "1 - Tartu -> Tallinn"
echo "2 - Tartu -> Valga"
echo "3 - Tartu -> Koidula"
echo ""
echo -n "Sisesta valik: "
read valik
#
if [ -z "$valik" ]
then
  echo "Valik jaai sisestamata."
  exit 1
fi
#
lahtejaam="Tartu"
case "$valik" in
  1)
    sihtjaam="Tallinn"
    ;;
  2)
    sihtjaam="Valga"
    ;;
  3)
    sihtjaam="Koidula"
    ;;
  *)
    echo "Vigane valik."
    exit 1
    ;;
esac
#
vastus=$(curl -s "https://elron.ee/live-map/stop/$lahtejaam")
if [ $? -ne 0 ]
then
  echo "Elroni API paring ebaonnestus."
  exit 1
fi
#
# jagame vastuse ykshaaval rongirekorditeks
kirjed=$(echo "$vastus" | grep -o '{[^}]*}')
#
# filtreerime ainult valitud sihtjaamaga rongid
sobivad=$(echo "$kirjed" | grep "\"sihtjaam\":\"$sihtjaam\"")
#
if [ -z "$sobivad" ]
then
  echo "Sobivaid ronge ei leitud."
  exit 1
fi
#
# eraldame valjumisajad
ajad=$(echo "$sobivad" | grep -o '"plaaniline_aeg":"[0-9:]*"' | cut -d'"' -f4)
#
praegu=$(date +"%H:%M")
#
echo ""
echo "$lahtejaam -> $sihtjaam"
echo "Praegune kellaaeg: $praegu"
echo ""
echo "Valjumised:"
#
PUNANE="\033[0;31m"
ROHELINE="\033[0;32m"
LAHTESTA="\033[0m"
#
aeg1=$(echo "$ajad" | sed -n '1p')
aeg2=$(echo "$ajad" | sed -n '2p')
aeg3=$(echo "$ajad" | sed -n '3p')
aeg4=$(echo "$ajad" | sed -n '4p')
#
if [ -n "$aeg1" ]
then
  if [[ "$aeg1" < "$praegu" ]]
  then
    echo -e "${PUNANE}$aeg1  rong on juba valjunud${LAHTESTA}"
  else
    echo -e "${ROHELINE}$aeg1  rong on veel ees${LAHTESTA}"
  fi
fi
#
if [ -n "$aeg2" ]
then
  if [[ "$aeg2" < "$praegu" ]]
  then
    echo -e "${PUNANE}$aeg2  rong on juba valjunud${LAHTESTA}"
  else
    echo -e "${ROHELINE}$aeg2  rong on veel ees${LAHTESTA}"
  fi
fi
#
if [ -n "$aeg3" ]
then
  if [[ "$aeg3" < "$praegu" ]]
  then
    echo -e "${PUNANE}$aeg3  rong on juba valjunud${LAHTESTA}"
  else
    echo -e "${ROHELINE}$aeg3  rong on veel ees${LAHTESTA}"
  fi
fi
#
if [ -n "$aeg4" ]
then
  if [[ "$aeg4" < "$praegu" ]]
  then
    echo -e "${PUNANE}$aeg4  rong on juba valjunud${LAHTESTA}"
  else
    echo -e "${ROHELINE}$aeg4  rong on veel ees${LAHTESTA}"
  fi
fi
