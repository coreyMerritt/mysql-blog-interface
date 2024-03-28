#!/bin/bash

function blog_backup() {
	
	before_dump=$(<blog_entries.sql)
	
	mysqldump -u root -p blog_entries > blog_entries.sql

	after_dump=$(<blog_entries.sql)

	if [ "$before_dump" != "$after_dump" ]; then
		echo "Backup Successful."
	else
		echo "Your backup was not updated, something went wrong."
	fi

}
