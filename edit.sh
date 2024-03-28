#!/bin/bash

function blog_edit() {

	if [ "$1" == "" ]; then
		echo "Which entry would you like to overwrite?:"
		read OVERWRITE_NUM
	else
		OVERWRITE_NUM="$1"
	fi

	if [ "$2" == "" ]; then
                file_name="./entry"
        else
                file_name="$2"
        fi

        cp "$file_name" entry_dirty

	sed -i "s/'/', CHAR(39), '/g" entry_dirty
	sed -i "s/\"/', CHAR(34), '/g" entry_dirty
	sed -i "s/;/', CHAR(59), '/g" entry_dirty

	ENTRY=$(<entry_dirty)
	rm entry_dirty

	SQL="
		UPDATE entries
		SET entry = CONCAT('$ENTRY')
		WHERE (entry_number = $OVERWRITE_NUM);
	
		SELECT *
                FROM entries
                WHERE entry_number = $OVERWRITE_NUM;
	"

	echo "Are you sure you want to permanently overwrite this entry?: (Y/N)"
	read EDIT_ANS


	if [ $EDIT_ANS == "Y" ] || [ $EDIT_ANS == "y" ]; then
		mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p -D "$MYSQL_DATABASE" -e "$SQL" | grep -v '^[-]*$' > output_dirty
		
		if [ $? -eq 0 ]; then

        		sed -i 's/^\([0-9]\+\s[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}\s[0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}\)/\n\n\n\1\n/g' output_dirty
        		sed -i 's/\\t/\t/g' output_dirty
        		sed -i 's/\\n/\n/g' output_dirty

        		cp output_dirty output
        		rm output_dirty

        		echo "Read last entry?: (Y/N)"
        		read READ_ANS

        		if [ "$READ_ANS" == "Y" ] || [ "$READ_ANS" == "y" ]; then
                		vim output
				echo "Overwrite completed."
        		else
				echo "Overwrite completed."
            	   		exit 0
			fi
		else
                	echo "Nothing has been overwritten."
			exit 1
		fi
	else
		echo "Nothing has been overwritten."
                        exit 0
	fi

}
