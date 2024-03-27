#!/bin/bash

MYSQL_HOST="localhost"
MYSQL_USER="root"
MYSQL_DATABASE="blog_entries"

SQL="	
SELECT entry_number, date_time, entry
FROM entries;
"

mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p -D "$MYSQL_DATABASE" -e "$SQL" | grep -v '^[-]*$' > output

sed -i '/^[0-9]+\s[0-9]{4}-[0-9]{2}-[0-9]{2}\s[0-9]{2}:[0-9]{2}:[0-9]{2}/ s/\([0-9]\)\t\([0-9]\)/\n\1\t\2\n/g; s/$/\n/' output

vim -c ":set wrap linebreak" +$ output
