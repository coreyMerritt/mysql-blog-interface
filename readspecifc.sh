#!/bin/bash

echo "Which entries would you like to read?   ex)1, 2, 5   (Leave blank for last entry)"
read ENTRY_NUMS



MYSQL_HOST="localhost"
MYSQL_USER="root"
MYSQL_DATABASE="blog_entries"

if [ "$ENTRY_NUMS" == "" ]; then
	SQL="	
		SELECT *
		FROM entries
		WHERE entry_number = (
			SELECT MAX(entry_number)
			FROM entries
			);
	"
else
	SQL="
		SELECT *
		FROM entries
		WHERE entry_number IN ("$ENTRY_NUMS");
	"
fi

mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p -D "$MYSQL_DATABASE" -e "$SQL" | grep -v '^[-]*$' > output_dirty

sed -i 's/^\([0-9]\+\s[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}\s[0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}\)/\n\1\n/g' output_dirty
sed -i 's/\\t/\t/g' output_dirty
sed -i 's/\\n/\n/g' output_dirty

cp output_dirty output
rm output_dirty

vim -c ":set wrap linebreak" output
