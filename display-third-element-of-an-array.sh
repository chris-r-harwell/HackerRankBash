#!/bin/bash
# REF: http://www.thegeekstuff.com/2010/06/bash-array-tutorial/
#
# INPUT: list of countries, one per line
# read into array
#
# OUTPUT:
# third element if zero indexed.
# bash array 1...N+1
#

set -e
set -u
set -o pipefail

declare -a countries
declare -i i=0

while read w; do
    i=i+1
    countries[i]=$w
done

echo ${countries[4]}
