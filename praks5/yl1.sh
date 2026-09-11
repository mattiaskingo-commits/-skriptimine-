#!/bin/bash
#
# vanuse jargi vanuserymma maaramine
# 
echo -n "Sisesta (oma) vanus: "
read vanus
# 
if test $vanus -gt 0 -a $vanus -lt 11 
then
echo "Oled laps"
elif test $vanus -ge 11 -a $vanus -lt 18
then
echo "Oled nooruk"
elif test $vanus -ge 18 -a $vanus -lt 63 
then
echo "Oled taiskasvanu"
elif test $vanus -ge 63
then
echo "Oled senjoor"
else
 echo "Vigane sisend"
fi

