#!/bin/bash

MYSQL_HOST="localhost"
MYSQL_USER="root"
MYSQL_DATABASE="blog_entries"

SQL="	
SELECT entry
FROM entries
WHERE entry_number = (
	SELECT MAX(entry_number)
	FROM entries
	);"

mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p -D "$MYSQL_DATABASE" -e "$SQL" | grep -v '^[-]*$' > output

vim -c ":set wrap linebreak" output
