#!/bin/bash

DUMP_LOCAL_PATH=~/Sites/exampleproject/db_backup.sql.gz
DUMP_VM_PATH=/home/ubuntu/work/ansible/lemp_poc/db_backup.sql.gz


echo "📤 Exporting Magento DB from Docker..."
docker exec exampleproject-db-1 sh -c 'exec mysqldump -uroot -pmagento --databases magento' | gzip > "$DUMP_LOCAL_PATH"


echo "📁 Ensuring target directory exists in VM..."
multipass exec lemp -- mkdir -p /home/ubuntu/work/ansible/lemp_poc

echo "🚚 Transferring backup to LEMP VM..."
multipass transfer "$DUMP_LOCAL_PATH" "lemp:$DUMP_VM_PATH"

echo "✅ Done: Backup ready in VM"
