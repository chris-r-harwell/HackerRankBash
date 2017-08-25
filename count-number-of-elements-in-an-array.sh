#!/bin/bash
# REF: http://www.thegeekstuff.com/2010/06/bash-array-tutorial/
#
# INPUT: list of countries, one per line
# read into array
#
# OUTPUT:
# element count
#

set -e
set -u
set -o pipefail

declare -a countries
declare -i i=0

while IFS= read -r w || [ -n "$w" ]; do
    i=i+1
    countries[i]=$w
done

echo ${#countries[@]}
