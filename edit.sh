#!/bin/bash

function edit() {

	echo "Which entry would you like to overwrite?:"
	read OVERWRITE_NUM

	cp entry entry_mysql

	sed -i "s/'/', CHAR(39), '/g" entry_mysql
	sed -i "s/\"/', CHAR(34), '/g" entry_mysql
	sed -i "s/;/', CHAR(59), '/g" entry_mysql

	ENTRY=$(<entry_mysql)
	rm entry_mysql

<<COMMENT
MYSQL_HOST="localhost"
MYSQL_USER="root"
MYSQL_DATABASE="blog_entries"
COMMENT

	SQL="
		UPDATE entries
		SET entry = CONCAT('$ENTRY')
		WHERE (entry_number = $OVERWRITE_NUM);
	"

	echo "Are you sure you want to permanently overwrite this entry?: (Y/N)"
	read EDIT_ANS


	if [ $EDIT_ANS == "Y" ] || [ $EDIT_ANS == "y" ]; then
		mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p -D "$MYSQL_DATABASE" -e "$SQL"
	else
		exit 1
	fi

<<COMMENT
echo "Read all entries?: (Y/N)"
read READ_ANS


if [ "$READ_ANS" == "Y" ] || [ "$READ_ANS" == "y" ]; then
	./read.sh all
elif [ "$READ_ANS" == "N" ] || [ "$READ_ANS" == "n" ]; then
	exit 1
fi
COMMENT
