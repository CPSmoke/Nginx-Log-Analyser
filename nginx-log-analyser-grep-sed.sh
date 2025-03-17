#!/bin/bash

LOG_FILE=$1

echo "Top 5 IP addresses with the most requests:"
grep -o '^[^ ]*' $LOG_FILE | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'

echo -e "\nTop 5 most requested paths:"
grep -o '"[A-Z]* $[^ ]*$ ' $LOG_FILE | sed 's/.* //;s/ $//' | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'

echo -e "\nTop 5 response status codes:"
grep -o ' [0-9]\{3\} ' $LOG_FILE | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'

echo -e "\nTop 5 user agents:"
grep -o '".*"' $LOG_FILE | awk -F'"' '{print $6}' | sort | uniq -c | sort -nr | head -n 5 | awk '{print $2 " - " $1 " requests"}'
