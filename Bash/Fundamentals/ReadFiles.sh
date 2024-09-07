#!/bin/bash

# read_file(){

#     local file_path="$1"

#     while IFS= read -r line; do
#     # The IFS ensures leading and trailing white spaces are preserved
#     # The -r prevents backslashes being interepreted as escape characters
#     # read - read each line of the file

#         echo "line being read: $line"
#     done < "$file_path"
# }

process_file(){

    local file_path="$1"

    cat "$file_path" | while IFS= read -r line; do
        echo "Processing line: $line"

    done
}

# read_file "./log.txt"

process_file "./log.txt"