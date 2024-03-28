#!/bin/bash

function blog_delete() {

	echo "Which entries would you like to delete? ex)1, 2, 5"
	read DEL_NUMS

<<COMMENT
	MYSQL_HOST="localhost"
	MYSQL_USER="root"
	MYSQL_DATABASE="blog_entries"
COMMENT

	SQL="
		DELETE FROM entries
		WHERE entry_number IN ($DEL_NUMS); 
	"

	echo "Are you sure you want to permanently delete these entries?: (Y/N)"
	read DEL_ANS


	if [ $DEL_ANS == "Y" ] || [ $DEL_ANS == "y" ]; then
		mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p -D "$MYSQL_DATABASE" -e "$SQL"
	else	
		exit 1
	fi

}

<<COMMENT
echo "Read all entries?: (Y/N)"
read READ_ANS


if [ "$READ_ANS" == "Y" ] || [ "$READ_ANS" == "y" ]; then
	./readall.sh
elif [ "$READ_ANS" == "N" ] || [ "$READ_ANS" == "n" ]; then
	exit 1
fi
COMMENT
