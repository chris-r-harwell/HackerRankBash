#!/bin/bash
set -e
set -u
set -o pipefail


cut -f1-3 -
exit

IFS="\t\n"
while read a b c d; do
    echo -e "$a\t$b\t$c"
done
