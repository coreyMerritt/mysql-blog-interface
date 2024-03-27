#!/bin/bash

echo "Which entries would you like to delete? ex)1, 2, 5"
read DELETE_NUMS

MYSQL_HOST="localhost"
MYSQL_USER="root"
MYSQL_DATABASE="blog_entries"

SQL="
	DELETE FROM entries
	WHERE entry_number IN ($DELETE_NUMS); 
"

echo "Are you sure you want to permanently delete these entries?: (Y/N)"
read WARN_ANS


if [ $WARN_ANS == "Y" ] || [ $WARN_ANS == "y" ]; then
	mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p -D "$MYSQL_DATABASE" -e "$SQL"
else
	exit 1
fi


echo "Read all entries?: (Y/N)"
read READ_ANS


if [ "$READ_ANS" == "Y" ] || [ "$READ_ANS" == "y" ]; then
	./readall.sh
elif [ "$READ_ANS" == "N" ] || [ "$READ_ANS" == "n" ]; then
	exit 1
fi
