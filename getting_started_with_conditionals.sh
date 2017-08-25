#!/bin/bash

read c

if [[ $c == y || $c == Y ]] ; then
	echo YES
elif [[ $c == N || $c == n ]] ; then
	echo NO
fi
