#!/bin/bash

#this script checks a user given password against the password stored

echo "Good morning Commander"
echo
read -sp "Enter your password: " passwordName
echo
var=$(echo "$passwordName" | sha256sum -c "/home/student/scripts/portfolio/week2/passwordTest/secret.txt")
echo 
if [ "$var" == "-: OK" ]; then
	echo "Access Granted"
	exit 0
else
	echo "Access Denied"
	exit 1
fi
