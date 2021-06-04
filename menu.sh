#!/bin/bash

#first call check password
./passwordCheck.sh
#return exit code of 0 if successful
#return exit code of 1 if faied

if [ $? -eq 0 ]; then
	echo "1.Create a folder "
	echo "2.Copy a folder "
	echo "3.Set a password "
else 
	echo "login failed"
	exit 1
fi

read userChoice

case "$userChoice" in
	1)
		/home/student/scripts/foldermaker.sh
		;;
	2)
		/home/student/scripts/portfolio/foldercopier.sh
		;;
	3)
		/home/student/scripts/portfolio/week2/setPassword.sh
		;;
esac

exit 0

