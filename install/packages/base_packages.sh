#!/bin/bash

# for application in $(cat terminal_apps.txt); do
# 	echo "$application"
# done

while read -r line; do
	#	echo "This is the line: $line"
	read -r application _ <<<"$line"
	#	echo "this is the application: $application"
	if [ "$application" != "#" ]; then
		echo -e "\e[32mInstalling... $application\e[0m"
		sudo apt -yq install "$application"
		# echo -e "\e[32m$application install done\e[0m"
	fi
done < $(pwd)/install/packages/base_packages.txt
