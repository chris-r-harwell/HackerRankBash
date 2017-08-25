#!/bin/bash
#
# INPUT: an arithmetic expression 
# OUTPUT floating point answer, with 3 digits of precision after the decimal, rounded
# 
# Note bc scale=3 doesn't round up, but truncates
# so we use bc with scale=4 and count on printf rounding rules.

read e
printf "%.3f\n" $( bc <<< "scale=4 ; $e" )

