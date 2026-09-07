#!/bin/bash
# Skript arvutab, mitu pakki kupsiseid on vaja tordi jaoks

 echo -n "Sisesta aluskandiku pikkus cm-tes: "
read pikkus
 echo -n "Sisesta aluskandiku laius cm-tes: "
read laius
echo -n "Sisesta kypsise suurus (kylje pikkus cm-tes): "
read suurus
echo -n "Mitu kihti tordil soovid: "
read kihid
echo -n "Mitu kypsist on yhes pakis: "
read pakis
pindala=$(expr $pikkus \* $laius)
kypsise_pindala=$(expr $suurus \* $suurus)
kypsiseid_kihis=$(expr $pindala / $kypsise_pindala)
kokku_kypsiseid=$(expr $kypsiseid_kihis \* $kihid)
pakkide_arv=$(expr $kokku_kypsiseid / $pakis)
jaak=$(expr $kokku_kypsiseid % $pakis) 

if [ $jaak -ne 0 ]
then
pakkide_arv=$(expr $pakkide_arv + 1)
fi

 echo "Kypsiseid kokku vaja: $kokku_kypsiseid"
echo "Pakke tuleb osta: $pakkide_arv"

