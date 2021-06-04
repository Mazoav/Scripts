#!/bin/bash 
secret=shhh #Don't tell anyone! 
      
#if the user types in the correct secret, tell them they got it right! 
read -sp "what's the secret code?" reply
echo       

if [ $secret == $reply ]; then
       echo "You got it right!" 
       testcorrent=true       
else
	echo "You got it wrong :(" 
	testcorrect=false 
fi 
      
case "$testcorrect" in 
     false)
	echo "Go Away!" #people who get it wrong need to be told to go away! 
	exit 1
	;;	
      true) 
	echo "you have unlocked the secret menu!" 
      
    #TODO: add a secret menu for people in the know. 
      	;; 
      
esac 
exit 0     
