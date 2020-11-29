#!/bin/bash

shopt -s extglob

function mobNumberValidation(){
read -p "Enter your mobile number : " mobileNum
country_code=91

patternForMobileNum="^\+[0-9]{2}[ ][0-9]{10}$"

if [[ $mobileNum =~ $patternForMobileNum ]]
then
	echo "Mobile number validated"
else
	echo "Invalid mobile number"
fi
}

mobNumberValidation
