#!/bin/bash
#notes-johanmartin.se


notes="notes"
	if [[ $1 != "" ]]; then
		notes="$1"
		echo "-------------------------"
		echo ""
		echo "You have now created a new file named: $1"
		echo ""
		echo "-------------------------"
		echo "" > ~/Documents/johan/${1}.txt
		echo "Press enter to continue"
		read key
		clear
	fi
	

while true; do
#meny with choices
	echo "-------------------------"
	echo "Choose option below "	
	echo "-------------------------"
    echo "[ 1 ] Create new text file " 
	echo "[ 2 ] Write a text to the text file " 
	echo "[ 3 ] Create a copy of the text file "
	echo "[ 4 ] Close the script "
	echo "-------------------------"


	#create first file
 	read choice 
	if [[ $choice = "1"  ]]; then
		echo "-------------------------"
		echo "Hey! you are about to create a file."
		echo "" > ~/Documents/johan/${notes}.txt
		echo "You have now created a new file named: $notes"
		echo "-------------------------"
		echo "Press enter to continue"
		read key
		clear
	fi
		
		
	# type a text to notes.txt
	if [[ $choice = "2" ]]; then 
		echo "-------------------------"
		echo "Write a text to the file"
		read text
		echo $text >> ~/Documents/johan/$notes.txt
		echo "Your wrote the text:  $text"	
		echo "-------------------------"
		echo "Press enter to continue"
		read key
		clear
	fi
	

	#make a copy of the text file to the folder you call the script
	if [[ $choice = "3" ]]; then 
		echo "-------------------------"
		echo "You will now copy the file, what do you want the file to be called ?"
		read nameTheCopy
		destination=$nameTheCopy.txt
		cp ~/Documents/johan/$notes.txt $destination
		echo Your file are now copied with the name: $destination
		echo "-------------------------"
		echo "Press enter to continue"
		read key
		clear
	fi


	#stop the script
	if [[ $choice = "4" ]]; then
		echo "-------------------------"
		echo "You have now stopped the script ! "
		exit 0
	fi

clear	

done 




	
	


	
