# Level 7: File Sorting Script

# Mission: Write a script that sorts all .txt files in a directory by their size, from smallest to largest, and displays the sorted list.


find . -type f -name "*.txt" -exec du -b {} + | sort -n | while read size file; do
  # Output file name and size
  echo "$file - $size bytes"
done