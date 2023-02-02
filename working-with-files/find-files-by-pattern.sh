#!/bin/bash
# The function in this bash script traverses a directory to create a list of files matching a pattern

# script error handling
# exit if script encounters an error
set -o errexit

# exit if script attempts to use an undeclared variable
set -o nounset

fn_get_search_params(){
	read -p "Enter a Parameter Type(\"1 - File Extension, 2 - FileName\"): " paramType
	read -p "Enter a Paramater Value for the chosen Parameter Type: " paramValue

	local chosenParamType=${paramType:0:1} 
	if [ "$chosenParamType" = "1" ]; then
		fn_find_files_by_extension
	elif [ "$chosenParamType" = "2" ]; then
		fn_find_files_by_name
	else
		echo "Please select 1 or 2"
	fi
}

fn_find_files_by_extension(){
	echo "You chose to find files by extension."
}

fn_find_files_by_name(){
	echo "You chose to find files by a matching pattern in the filename."
}

fn_get_search_params
