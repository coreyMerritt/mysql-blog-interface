#!/bin/bash

function blog_write() {

	if [ "$1" == "" ]; then
		file_name="./entry"
	else
		file_name="$1"
	fi

	cp "$file_name" entry_dirty

	sed -i "s/'/', CHAR(39), '/g" entry_dirty
	sed -i "s/\"/', CHAR(34), '/g" entry_dirty
	sed -i "s/;/', CHAR(59), '/g" entry_dirty

	ENTRY=$(<entry_dirty)
	rm entry_dirty

	SQL="
		INSERT INTO entries (entry) VALUES (
		CONCAT('"$ENTRY"')
		);

		SELECT *
                FROM entries
                WHERE entry_number = (
                	SELECT MAX(entry_number)
                	FROM entries
                	);
	"

	mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p -D "$MYSQL_DATABASE" -e "$SQL" | grep -v '^[-]*$' > output_dirty

        sed -i 's/^\([0-9]\+\s[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}\s[0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}\)/\n\n\n\1\n/g' output_dirty
        sed -i 's/\\t/\t/g' output_dirty
        sed -i 's/\\n/\n/g' output_dirty

        cp output_dirty output
        rm output_dirty

	echo "Read last entry?: (Y/N)"
	read READ_ANS

	if [ "$READ_ANS" == "Y" ] || [ "$READ_ANS" == "y" ]; then
		vim output
	elif [ "$READ_ANS" == "N" ] || [ "$READ_ANS" == "n" ]; then
		exit 1
	fi
}
