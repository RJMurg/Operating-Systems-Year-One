#!/bin/bash

if [ -e file_path ]; then
	echo "file_path exists"

	if [ -w file_path ]; then
		echo "You have permissions to edit 'file_path'"
	else
		echo "You do NOT have permissions to edit 'file_path'"
	fi
else
	echo "file_path does NOT exist"
fi
