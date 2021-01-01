#!/bin/sh

# Load settings
. settings.conf
# Server name in ~/.ssh/config
SERVER="inspire"

# Directory to be backed up

SOURCE_DIR="/Users/adkj/Documents"


# Destination directory on server
BACKUP_DIR="/mnt/seagate120/Backups/"

# Where to write the log
SRC_LOGS="/Users/adkj/Library/Logs/akjems/autoBackup-src.log"

EXCLUDES="*/node_modules/"

OPTS="-czuaPq --exclude=$EXCLUDES"

echo $SOURCE_DIR

# Check connnection to server is possible
ssh -q -o ConnectTimeout=5 -o ConnectionAttempts=1 ${SERVER} exit
retVal=$?
echo "$(date) SSH to $SERVER Failed" >> $SRC_LOGS
if [ $retVal -ne 0 ]; then
    echo "$(date) SSH to $SERVER Failed" >> $SRC_LOGS
else
    time rsync -czuaPq --delete $SOURCE_DIR $SERVER:/$BACKUP_DIR
    retVal=$?
    if [ $retVal -ne 0 ]; then
        ssh $SERVER 'echo "$(date) Error with rsync">>$SOURCE_LOGS'
    fi
    ssh inspire 'echo "$(date) rsync from WjitL completed">>$DEST_LOGS'
fi
