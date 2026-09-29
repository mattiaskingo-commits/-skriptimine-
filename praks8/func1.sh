#!/bin/bash
#
# Naitab funktsiooni pohitoid - definitsioon, mitu valjakutset, funktsioon kutsub teist
#
show_user() {
 echo "Kasutaja:"
 whoami
}
show_host() {
 echo "Arvuti:"
 hostname
}
show_system() {
 show_user
 show_host
}
show_system
echo ""
hello() {
 echo "Tere!"
}
hello
hello
hello
