#!/bin/bash
set -e
set -u
set -o pipefail

cut -c2-7 -
exit

while read -r myline; do
    echo "${myline:1:6}"
done
