#!/bin/bash
shopt -s extglob

function validLastName() {
   read -p "Enter your last name :" lname
   patternForLastName="^[[:upper:]]{1}[[:lower:]]{2,}$"
   if [[ $lname =~ $patternForLastName ]]
   then
      echo "Valid last name entered"
   else
      echo "Invalid last name. Please enter valid name"
   fi
}
validLastName




