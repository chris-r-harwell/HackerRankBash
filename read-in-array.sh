#!/bin/bash
#
# INPUT: list of countries, one per line
# read into array
# then display the entire array with a space
# between each of the countries' names.
set -e
set -u
set -o pipefail

declare -a countries
declare -i i=0

while read w; do
    i=i+1
    countries[i]=$w
done

echo ${countries[@]}

