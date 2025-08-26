#!/bin/bash

# for application in $(cat terminal_apps.txt); do
# 	echo "$application"
# done

while read -r line; do
#	echo "This is the line: $line"
	read -r application _ <<< "$line"
#	echo "this is the application: $application"
	echo -e "\e[32mInstalling... $application\e[0m"
	sudo apt -y install "$application"
done < terminal_apps.txt
