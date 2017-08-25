#!/bin/bash
# REF: http://www.thegeekstuff.com/2010/06/bash-array-tutorial/
#
# INPUT: list of countries, one per line
# read into array
#
# OUTPUT:
# same list, but without names that contain a or A

set -e
set -u
set -o pipefail

declare -a countries
declare -i i=0

while read w; do
    i=i+1
    countries[i]=$w
done

echo ${countries[@]/*[aA]*/}

