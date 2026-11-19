#!/bin/bash
#==============================================================================
# apache_paigaldus.sh - apache2 paigalduse kontroll ja vajadusel paigaldus
#
# Kirjeldus : Skript kontrollib, kas apache2 on paigaldatud.
#             - Kui EI ole, siis paigaldab selle.
#             - Kui ON, siis annab sellest teada ja näitab teenuse staatust.
# Kasutus   : ./apache_paigaldus.sh        (käivitada root kasutajana)
#==============================================================================

TEENUS="apache2"      # kontrollitava paketi/teenuse nimi

# Paigaldamiseks on vaja root õigusi
if [ "$(id -u)" -ne 0 ]; then
    echo "VIGA: skripti tuleb käivitada root kasutajana (su - või sudo)" >&2
    exit 1
fi

# dpkg-query annab paketi oleku (nt "install ok installed").
# 2>/dev/null peidab veateate, kui paketti ei leitud.
# grep -c loeb, mitu rida sisaldab teksti "ok installed" (0 või 1).
PAIGALDATUD=$(dpkg-query -W -f='${Status}' "$TEENUS" 2>/dev/null | grep -c 'ok installed')

if [ "$PAIGALDATUD" -eq 0 ]; then
    # "ok installed" ei leitud -> teenus ei ole paigaldatud
    echo "Paigaldame $TEENUS"
    apt-get update
    apt-get install -y "$TEENUS"
    echo "$TEENUS on paigaldatud"
else
    # "ok installed" leiti -> teenus on juba paigaldatud
    echo "$TEENUS on juba paigaldatud"
fi

# Mõlemal juhul: veendume, et teenus töötab, ja näitame staatust
# (--no-pager väldib seda, et väljund jääks lugemisrežiimi ootama)
systemctl start "$TEENUS"
systemctl status "$TEENUS" --no-pager
