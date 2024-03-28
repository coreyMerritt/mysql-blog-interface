#!/bin/bash

function blog_delete() {

	if [ "$1" == "" ]; then
                echo "Which entry would you like to delete?:   ex)1, 2, 5"
                read DEL_NUMS
        else
                DEL_NUMS="$1"
        fi

	SQL="
		DELETE FROM entries
		WHERE entry_number IN ($DEL_NUMS);

                SELECT *
                FROM entries; 
	"

	echo "Are you sure you want to permanently delete these entries?: (Y/N)"
	read DEL_ANS


	if [ $DEL_ANS == "Y" ] || [ $DEL_ANS == "y" ]; then
		
		mysql -h "$MYSQL_HOST" -u "$MYSQL_USER" -p -D "$MYSQL_DATABASE" -e "$SQL" | grep -v '^[-]*$' > output_dirty

                if [ $? -eq 0 ]; then

                        sed -i 's/^\([0-9]\+\s[0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}\s[0-9]\{2\}:[0-9]\{2\}:[0-9]\{2\}\)/\n\n\n\1\n/g' output_dirty
                        sed -i 's/\\t/\t/g' output_dirty
                        sed -i 's/\\n/\n/g' output_dirty

                        cp output_dirty output
                        rm output_dirty

                        echo "Read all entries?: (Y/N)"
                        read READ_ANS

                        if [ "$READ_ANS" == "Y" ] || [ "$READ_ANS" == "y" ]; then
                                vim output
                                echo "Deletion completed."
				exit 0 
                        else
                                echo "Deletion completed."
                                exit 0
                        fi
                else
                        echo "Nothing has been deleted."
                        exit 1
                fi
	else	
		exit 1
	fi

}
