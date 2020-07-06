#!/bin/bash -x

shopt -s extglob

echo "First Name"
read firstN
echo "Last Name"
read lastN


pat1="^([A-Z]{1}[a-z]{2,} {0,1})+$"

if [[ $firstN =~ $pat1 ]]
then
    if [[ $lastN =~ $pat1 ]]
    then
        echo "Name :- "$firstN" "$lastN
    else
        echo "Invalid Last Name"
    fi
else
    echo "Invalid First Name"
fi
