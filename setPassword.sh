#!/bin/bash
#Welcome message
echo "Good morning Commander"
echo
#request for folder name to store password
read -p "Please set folder name for encryption: " folderName
echo
#request for password
read -sp "Now set password for $folderName: " passwordName
#store password in designated folder
echo "$passwordName" | sha256sum > "$folderName"/secret.txt  
echo
echo
echo "Task complete Commander"
exit 0
