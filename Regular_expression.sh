#!/bin/bash -x

echo "********** Welcome to Regular Expression **********"

#CHECKING VALID OR INVALID CONDITIONS
function conditionCheck()
{
	if [[ $value =~ $regexPattern ]]
	then
		echo "valid "
	else
		echo "invalid"
	fi
}

#FUNCTION OF FIRST NAME
function firstName()
{
	read -p "First name :" value
	regexPattern="^[A-Z][a-zA-Z]{2,}$"
	conditionCheck
}

#FUNCTION OF LAST NAME
function lastName()
{
	read -p "Enter Last name :" value
	regexPattern="^[A-Z]{1}[a-zA-Z]{2,}$"
	conditionCheck
}

#FUNCTIONS CALL
firstName
lastName
