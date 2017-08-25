#!/bin/bash
#
# INPUT: num elements, then one per line
# OUTPUT average, floating point answer, with 3 digits of precision after the decimal, rounded
# 
# Note bc scale=3 doesn't round up, but truncates
# so we use bc with scale=4 and count on printf rounding rules.

declare -i sum=0

read n

for ((i=0; i<$n; i++)); do
	read j
	sum=$(( sum + j ))
done

printf "%.3f\n" $( bc <<< "scale=4 ; $sum/$n" )
