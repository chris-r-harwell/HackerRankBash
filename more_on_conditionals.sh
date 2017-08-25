#!/bin/bash

read x
read y
read z

eq_pairs=0

[[ $x == $y ]] && (( eq_pairs++ ))
[[ $x == $z ]] && (( eq_pairs++ ))
[[ $y == $z ]] && (( eq_pairs++ ))

if [[ $eq_pairs -eq 3 ]] ; then
	echo EQUILATERAL
elif [[ $eq_pairs -eq 1 ]] ; then
	echo ISOSCELES
else
	echo SCALENE
fi
