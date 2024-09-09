# Level 6: Argument Parsing

# Mission: Write a script that accepts a filename as an argument and prints the number of lines in that file. If no filename is provided, display a message saying 'No file provided'.

file_name=$1

if [ -f "$file_name" ]; then
    echo "File exists"
    else 
    echo "Filename: $file_name does not exist"

fi
