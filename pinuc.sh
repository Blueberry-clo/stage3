#!/bin/bash
function pinAddress(){
read -p "Enter the pin-code :" pin
pattern="^[1-9]{1}[0-9]{2}[ ][0-9]{3}$"
patternOne="^[1-9]{1}[0-9]{2}[0-9]{3}$"
if [[ $pin =~ $pattern || $pin =~ $patternOne ]]
then
	echo "Pin verified"
else
	echo "Invalid pin"
fi
}

pinAddress
