#!/bin/bash
# 
# reisi korraldamine - busside arvu arvutamine 
#
# inimeste andmed
echo -n "Sisesta reisijate arv: "
read reisijad 
# kohtade andmed bussis 
echo -n "Sisesta kohtade arv bussis: "
read kohad
#
# arvutused
# 
bussid=$(( $reisijad / $kohad ))
ylejaanud=$(( $reisijad % $kohad ))
#
# kui on ylejaanud reisijaid, tuleb bussi arvule 1 juurde liita
if [ $ylejaanud -gt 0 ]
then
bussid=$(( $bussid + 1 )) 
fi
# 
 echo "Kokku on vaja $bussid bussi"


