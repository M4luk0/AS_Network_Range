#!/bin/bash
# AS_Network_Range
# Copyright: Juan Antonio Gil Chamorro (M4luk0)

# We check if there are 2 parameters to be able to execute it
if [ -z $2 ];
then
	echo "Syntax Error!"
        echo "you have to introduce AS Number and the name of the file!"
else
	# If we run it correctly, we will get a file with all the AS info and another one with the corresponding network ranges
	curl -s "http://ipv4info.com/api_v1/?key=KEY&type=ASINFO&value=$1&page=0" --output "$2_Full_Info"
	grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\/[0-9]\{1,2\}' "$2_Full_Info" > "$2_Network_Range"
	echo "Completed!"
fi
