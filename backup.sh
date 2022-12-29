BACKUP_FOLDER=./backup/
if [ -d "$BACKUP_FOLDER" ]; then
  echo "Found $BACKUP_FOLDER"
else
  echo "Could not find $BACKUP_FOLDER". Creating...""
  mkdir $BACKUP_FOLDER
fi

SRC=./pb_data/data.db
DST=./backup/data_$(date +%Y-%m-%d_%H-%M-%S).db
echo "Backing up $SRC to $DST"
sqlite3 $SRC ".backup $DST"