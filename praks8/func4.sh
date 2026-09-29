#!/bin/bash
#
# Naitab funktsiooni tulemuse tagastamist echo ja $() abil
#
liida() {
 local a="$1"
 local b="$2"
 echo "$((a + b))"
}
tulemus=$(liida 10 20)
echo "Tulemus: $tulemus"
