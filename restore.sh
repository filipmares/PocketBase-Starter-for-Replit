FILE=./backup/$1
if [ -f "$FILE" ]; then
  echo "Found backup $FILE. Restoring..."
  sqlite3 ./pb_data/data.db ".restore ./backup/data_2022-12-29_01-17-21.db" 
else 
    echo "Could not find $FILE. Try a valid backup file in ./backup/ ."
fi