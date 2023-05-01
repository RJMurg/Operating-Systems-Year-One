#!/bin/bash

select choice in DiskUsage Uptime LoggedInUsers Quit
do
	case $choice in
		"DiskUsage")
			df
			echo;;
		"Uptime")
			uptime
			echo;;
		"LoggedInUsers")
			who
			echo;;
		"Quit")
			echo "Goodbye!"
			break;;
		*)
			echo "Invalid option.";;
	esac
done

