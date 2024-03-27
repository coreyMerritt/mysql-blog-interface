#!/bin/bash

cp entry entry_mysql

sed -i "s/'/', CHAR(39), '/g" entry_mysql
sed -i "s/\"/', CHAR(34), '/g" entry_mysql
sed -i "s/;/', CHAR(59), '/g" entry_mysql

ENTRY=$(<entry_mysql)
rm entry_mysql

MYSQL_HOST="localhost"
MYSQL_USER="root"
MYSQL_DATABASE="blog_entries"

SQL="
INSERT INTO entries (entry) VALUES (CONCAT('"$ENTRY"'));
"

mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p -D "$MYSQL_DATABASE" -e "$SQL"

echo "Read last entry?: (Y/N)"
read READ_ANS

if [ "$READ_ANS" == "Y" ] || [ "$READ_ANS" == "y" ]; then
	./readlast.sh
elif [ "$READ_ANS" == "N" ] || [ "$READ_ANS" == "n" ]; then
	exit 1
fi
