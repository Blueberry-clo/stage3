#!/bin/bash

shopt -s extglob

function passwordValidation(){
read -p "Enter Password:" password

patternForPassword="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@!#$%])(?=.*[a-zA-Z0-9@!#$]).{8,}$"
#pat="^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@!#$%])(?=.*[a-zA-Z0-9@!#$]).{8,}$"
if [[ $password =~ $patternForPassword ]]
then
   echo "Password Validated"
else
   echo "Invalid password"
fi
}
passwordValidation
