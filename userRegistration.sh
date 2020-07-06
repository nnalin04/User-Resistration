#!/bin/bash -x

shopt -s extglob

echo "First Name"
read firstN
echo "Last Name"
read lastN
echo "Enter the Email ID"
read email
echo "Enter Your Mobile Number"
read num


pat1="^([A-Z]{1}[a-z]{2,} {0,1})+$"

pat2="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[0-9a-zA-Z]{2,4}([.][a-zA-Z]{2})*$"

pat3="^([1-9]{1}([-][1-9]{1}[0-9]{1,2}||[0-9]{1,3})) {1}[1-9]{1}[0-9]{9}$"



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

if [[ $email =~ $pat2 ]]
then
    echo "email :- "$email
else
    echo "Invalid User Email ID"
fi

if [[ $num =~ $pat3 ]]
then
    echo "Mobile no:- "$num
else
    echo "Invalid Mobile Number"
fi