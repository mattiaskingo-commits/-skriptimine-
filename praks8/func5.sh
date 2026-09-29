#!/bin/bash
#
# Naitab return olekukoodi ja funktsiooni kasutamist if-tingimuses
#
kontrolli_faili() {
 if [ -f "$1" ]; then
 return 0
 else
 return 1
 fi
}
kontrolli_faili "/etc/passwd"
echo "Olekukood: $?"
if kontrolli_faili "/etc/passwd"; then
 echo "Fail on olemas."
else
 echo "Faili ei leitud."
fi
if kontrolli_faili "/tmp/ei_ole_olemas.txt"; then
 echo "Fail on olemas."
else
 echo "Faili ei leitud."
fi
