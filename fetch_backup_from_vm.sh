#!/bin/bash

SOURCE="/tmp/magento_warden.sql.gz"
DESTINATION="/home/alshan/backup"

echo "📥 Fetching backup from LEMP VM..."
multipass transfer lemp:$SOURCE $DESTINATION
echo "✅ Backup transferred to $DESTINATION"
