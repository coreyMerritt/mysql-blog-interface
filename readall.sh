#!/bin/bash

MYSQL_HOST="localhost"
MYSQL_USER="root"
MYSQL_DATABASE="blog_entries"

SQL="	
SELECT entry_number, date_time, entry
FROM entries;
"

mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p -D "$MYSQL_DATABASE" -e "$SQL" | grep -v '^[-]*$' > output_dirty

sed -i 's/^\([0-9]\+\s[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}\s[0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}\)/\n\n\n\1\n/g' output_dirty
sed -i 's/\\t/\t/g' output_dirty
sed -i 's/\\n/\n/g' output_dirty

cp output_dirty output
rm output_dirty

vim -c ":set wrap linebreak" +$ output

