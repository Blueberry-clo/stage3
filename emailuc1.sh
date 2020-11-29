#!/bin/bash
function emailPattern(){
read -p "Enter email id : " emailid
pat="^(([A-Za-z0-9]+((\.|\-|\_|\+)?[A-Za-z0-9]?)*[A-Za-z0-9]+)|[A-Za-z0-9]+)@(([A-Za-z0-9]+)+((\.|\-|\_)?([A-Za-z0-9]+)+)*)+\.([A-Za-z]{2,})+$" 
#all conditions true
if [[ $emailid =~ $pat ]]
then
	echo "Valid Email Address"
else
	echo "Invalid Email Address"
fi
}
emailPattern

