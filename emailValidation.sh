#! /bin/bash -x

# Code to validate email address

shopt -s extglob

read -p "Enter Email address to validate :  " email

emailRegx="^([a-z]{1,}[0-9a-zA-Z]{0,}[@]{1}[a-z]{1,}[.]{1}[a-z]{2,})" # To handle Mandatory part

optionalRegx="^([a-z]{1,}[0-9a-zA-Z]{0,}([._+-]{0,1}[a-z0-9A-Z]){0,}[@][a-zA-Z0-9]{1,}[.][a-z]{2,})$" # To handle optional part

if [[ $email =~ $emailRegx ]]
then
		echo "$email is valid"
elif [[ $email =~ $optionalRegx ]]
then
		echo "$email is valid email address with optional part"
else
		echo "$email is not valid email address"
fi
