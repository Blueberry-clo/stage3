#!/bin/bash
shopt -s extglob

function validFirstName() {
	read -p "Enter your first name :" name
	patternForFirstName="^[[:upper:]]{1}[[:lower:]]{2,}$"
	if [[ $name =~ $patternForFirstName ]]
	then
		echo "Valid first name entered"
	else
		echo "Invalid first name. Please enter valid name"
	fi
}
validFirstName
