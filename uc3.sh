#!/bin/bash
shopt -s extglob

function emailPattern(){
	read -p "Enter valid email id : " emailId
	patternForEmail="^(([A-Za-z0-9]+((\.|\-|\_|\+)?[A-Za-z0-9]?)*[A-Za-z0-9]+)|[A-Za-z0-9]+)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$"
	if [[ $emailId =~ $patternForEmail ]]
	then
		echo "Valid Email Id entered"
	else
		echo "Invalid Email Id"
	fi
}
emailPattern
