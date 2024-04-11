#!/bin/bash

if [ $# -ne 6 ]
then
    echo "Enter 6 arguments Example: $0 -t pdf -n search_string -d /"
    echo "------------------------------------------------------------"
    echo "-t 'file extension'"
    echo "-n 'string to search for'"
    echo "-d 'directory to search in'"
    exit 1
fi

while [ $# -gt 0 ]; do
    case "$1" in
        -t)
            extension="$2";;
        -n)
            search_string="$2";;
        -d)
            directory="$2";;
        *)
            echo "Option: $1 does not exist" && exit;;
    esac
    shift 2;
done

if [ "$extension" = "pdf" ]; then
    for file in "$directory"/*.pdf; do
        if [ -f "$file" ]; then
            # Use pdftotext to convert the PDF to text and grep to search for the word
            result=$(pdftotext "$file" - | grep -qi "$search_string" && echo "$file")
            # Check if result is not empty
            if [ -n "$result" ]; then
                echo "$result"
            fi
        fi
    done
else
    find "$directory" -type f -name "*.$extension" -exec grep -q "$search_string" {} \; -exec echo {} \;
fi

