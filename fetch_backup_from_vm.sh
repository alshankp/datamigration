#!/bin/bash

# Define source and destination paths
SOURCE="/tmp/magento_warden.sql.gz"
DESTINATION="/home/alshan/backup/"

echo " Fetching backup from LEMP VM..."
echo "→ From: lemp:$SOURCE"
echo "→ To  : $DESTINATION"

# Transfer the backup from VM to local
multipass transfer "lemp:$SOURCE" "$DESTINATION"

echo "✅ Done: Backup copied to $DESTINATION"
