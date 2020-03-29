#! /bin/bash -x

# Code to validate email address

shopt -s extglob

read -p "Enter Email address to validate :  " email

emailPattern="^([a-z]{3,}[0-9 a-z])"  # 3-Mandatory parts

if [[ $email =~ $emailPattern ]]
then
      echo "$email is valid"
else
      echo "$email is not valid"
fi
