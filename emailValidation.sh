#! /bin/bash -x

# Code to validate email address

shopt -s extglob

read -p "Enter Email address to validate :  " email

finalRegx="^([a-z]{1,}[0-9a-zA-Z]{0,}([._+-]{0,1}[a-z0-9A-Z]){0,}[@][a-zA-Z0-9]{1,}[.][a-zA-Z]{2,}[.]{0,1}[a-zA-Z]{2})$" # Final Regx to handle 2-char  maximum

if [[ $email =~ $finalRegx ]]
then
		echo "$email is valid email address"
else
		echo "$email is not valid email address"
fi
