#!/bin/bash
#
# INPUT: two lines
# int, number of ints in next line
# list of ints.
#
# OUTPUT: int that occurs only once
#

set -e
set -u
set -o pipefail

declare -a intlist

read -r num
read -r -a intlist || [ -n "$intlist" ]

count_elements_in_array(){
    # input: item .. array as positional arguments
    # output: number of times element occurs
    declare -i n=0
    elem=$1
    for item in "${@:2}" ; do
        if [[ $item -eq $elem ]] ; then
            n=$n+1
        fi
    done

    return $n
}


for i in ${intlist[@]}; do
    set +e
    count_elements_in_array $i ${intlist[@]}
    m=$?
    #DEBUG echo counted $i $m times in ${intlist[@]}
    set -e
    if [[ $m -eq 1 ]] ; then
        echo $i
    fi
done
