#!/bin/bash -x

shopt -s extglob

echo "First Name"
read firstN


pat1="^([A-Z]{1}[a-z]{2,} {0,1})+$"

if [[ $firstN =~ $pat1 ]]
then
    echo "Name :-"$firstN
else
    echo "Invalid First Name"
fi

