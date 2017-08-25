#!/bin/bash
# REF: http://www.thegeekstuff.com/2010/06/bash-array-tutorial/
# REF: https://stackoverflow.com/questions/12916352/shell-script-read-missing-last-line
#
# INPUT: list of countries, one per line
# read into array
#
#  concatenate the array with itself (twice) - so that you have a total of three repetitions of the original array - and then display the entire concatenated array, with a space between each of the countries' names.

# OUTPUT:
# Display the entire concatenated array, with a space between each of them.

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
    countries[i]=$w
done

countries=("${countries[@]}" "${countries[@]}" "${countries[@]}")
echo ${countries[@]}
