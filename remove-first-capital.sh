#!/bin/bash
#
# INPUT: list of coutnry names one per line
# OUTPUT: replace first capital letter of each with a '.'
# and print out space separated.
#

set -e
set -u
set -o pipefail

declare -a countries
declare -i i=0

while IFS= read -r w || [ -n "$w" ]; do
    # Note in above we use an or || to cover the case
    # where an item was read into w but read returns non-zero e.g. error
    # because it found an EOF before a newline.
    i=i+1
    countries[i]=${w/[A-Z]/.}
done

echo ${countries[@]}
