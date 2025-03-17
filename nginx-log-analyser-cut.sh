#!/bin/bash

LOG_FILE=$1

echo "Top 5 IP addresses with the most requests:"
cut -d' ' -f1 $LOG_FILE | sort | uniq -c | sort -nr | head -n 5

echo -e "\nTop 5 most requested paths:"
cut -d' ' -f7 $LOG_FILE | sort | uniq -c | sort -nr | head -n 5

echo -e "\nTop 5 response status codes:"
cut -d' ' -f9 $LOG_FILE | sort | uniq -c | sort -nr | head -n 5

echo -e "\nTop 5 user agents:"
cut -d'"' -f6 $LOG_FILE | sort | uniq -c | sort -nr | head -n 5
