#! /bin/bash -x

# Code to validate email address

shopt -s extglob

read -p "Enter Email address to validate :  " email

emailPattern="^([a-z]{1,}[0-9a-z]{0,}[@]{1}[a-z]{1,})"  # Mandatory @ parts

if [[ $email =~ $emailPattern ]]
then
      echo "$email is valid"
else
      echo "$email is not valid"
fi
