#!/bin/bash

LOOPVAR=true

while $LOOPVAR;
do
	echo "* Bash Commands *"
	echo "1. List files"
	echo "2. Show free disk space"
	echo "3. Show system path"
	echo "4. Display command history"
	echo "5. Backup files"
	echo "6. Exit"

	read -p "Choice: " CHOICE

	case $CHOICE in
		"1")
			ls -a
			echo;;
		"2")
			df
			echo;;
		"3")
			pwd
			echo;;
		"4")
			echo $(cat ~/.bash_history)
			echo;;
		"5")
			echo "Enter the relative directory to back-up (i.e. ./my_files)"
			read -p "Directory: " DIRECTORY
			mkdir BackupFolder
			cp -r $DIRECTORY BackupFolder
			echo "Backed up!"
			ls -a BackupFolder;;
		"6")
			echo "Goodbye!"
			break;;
		*)
			echo "Invalid option, please try again.";;
	esac
done
