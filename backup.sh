#!/bin/bash

function blog_backup() {

	mysqldump -u root -p blog_entries > blog_entries.sql

	cur_time=$(date +%S)
	mod_time=$(stat -c %Y "blog_entries.sql")
	time_dif=$((cur_time - mod_time))

	if [ "$time_dif" -le 2 ]; then
		echo "Backup Successful."
	else
		echo "blog_entries.sql was not updated, something went wrong."
	fi

}
