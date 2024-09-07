#!/bin/bash


## HOW TO USE THIS SCRIPT ##

### In the terminal, run the script using ./AdvancedLogSearching.sh followed by the error within the log.txt file; ./AdvancedLogSearching.sh "ERROR" log.txt  - for example

# Function to search the log for a specific severity level or term and format the output
search_logs(){
    local search_term="$1"
    local log_file="$2"

    echo "Searching for logs with severity: $search_term in file: $log_file"
    
    # Use awk to extract and format fields (date, time, severity, and message)
    awk -v search="$search_term" '
    BEGIN {
        # Print a header for the output table
        printf "%-15s %-10s %-12s %-50s\n", "Date", "Time", "Severity", "Message"
        print "-----------------------------------------------------------------------------------------"
    }
    # Process each line and match with the search term
    $3 ~ search {
        date = $1
        time = $2
        severity = $3
        message = substr($0, index($0, $4))  # Capture the rest of the line as the message

        # Format the output with aligned columns
        printf "%-15s %-10s %-12s %-50s\n", date, time, severity, message
    }' "$log_file"
}

# Call the search_logs function with user input
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <search_term> <log_file>"
    exit 1
fi

search_logs "$1" "$2"