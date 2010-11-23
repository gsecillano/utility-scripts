#!/bin/sh
#

BASE_BACKUP_DIR=/d/projects/ondemand/whohar/backup/
BACKUP_DIR=`date +%Y%m%d%H%M`

# Create the backup directory
mkdir -p $BASE_BACKUP_DIR/$BACKUP_DIR/runtime/production

FILE=$BASE_BACKUP_DIR/$BACKUP_DIR/whohar_production.sql
ssh whohar1 '/c/Program\ Files/MySQL/MySQL\ Server\ 5.0/bin/mysqldump -u root whohar_production' > $FILE

scp -r whohar2:/d/whohar_deployment/whohar/runtime/production/public $BASE_BACKUP_DIR/$BACKUP_DIR/runtime/production/. > /dev/null 2>/dev/null
