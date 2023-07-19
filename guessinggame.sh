#!/bin/bash

# Function to check if the user's guess is correct
function check_guess {
	local answer=$1
	
	if [[ $answer -eq $num_files ]]
	then
		echo "Congratulations! You guessed the correct number of files."
		exit 0
	elif [[ $answer -lt $num_files ]]
	then
		echo "Value too low. Try again."
	else
		echo "Value too high. Try again."
	fi
}

# Get the number of files in the current directory
num_files=$(ls -l | grep -v ^d | wc -l)

# Ask the user for their guess
function guessinggame {
	echo "Guess the number of files in the current directory:"
	while true
	do	
		read guess

		# Validate the user's input
		if [[ ! $guess =~ ^[0-9]+$ ]]
		then
		echo "Invalid input. Please enter a positive integer."
		continue
		fi

		# Call the function to check the user's guess
		check_guess $guess
	done
}

guessinggame