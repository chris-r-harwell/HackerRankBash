#!/bin/bash
set -e
set -u
set -o pipefail

cut -c3 -
exit

while read -r myline; do
    echo "${myline:2:1}"
done
