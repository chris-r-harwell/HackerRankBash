#!/bin/bash
set -e
set -u
set -o pipefail

cut -c1-4 -
exit

while read -r myline; do
    echo "${myline:0:4}"
done
