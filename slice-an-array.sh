#!/bin/bash
# REF: http://www.thegeekstuff.com/2010/06/bash-array-tutorial/
#
# INPUT: list of countries, one per line
# read into array
#
# OUTPUT:
# elements 3 through 7, zero indexed, inclusive.

set -e
set -u
set -o pipefail

declare -a countries
declare -i i=0

while read w; do
    i=i+1
    countries[i]=$w
done

# slice 0 indexed
# :start:offset
#
echo ${countries[@]:4:5}
# start from 4, go through end.
# e.g. default offset is all through end.
# echo ${countries[@]:4}

