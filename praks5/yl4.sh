#!/bin/bash
#
# aja jargi tervitamine koos kasutaja nimega, aeg loetakse susteemist
#
aeg=$(date +"%H")
# eemaldame algusnulli (nt 08 -> 8), muidu bash tolgendab seda vale numbrina
aeg=$((10#$aeg))
nimi=$(whoami)
nimi="${nimi^}" 
#
if [ $aeg -ge 6 -a $aeg -lt 12 ]
then
echo "Tere hommikust, $nimi!"
elif [ $aeg -ge 12 -a $aeg -lt 18 ]
then
echo "Tere paevast, $nimi!"
elif [ $aeg -ge 18 -a $aeg -lt 22 ]
then
echo "Tere ohtust, $nimi!"
elif [ $aeg -ge 22 -a $aeg -lt 24 ] || [ $aeg -ge 0 -a $aeg -lt 6 ] 
then
echo "Head ood, $nimi!"
else
echo "Vale sisend"
fi

