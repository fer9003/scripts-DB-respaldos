#!/bin/bash
D=$(date +'%Y%m%d')
HOST=endpoint
DB_USER=dbuser
DB_PASS=dbpass
mkdir -p /bacula/backups_prod/wordpressec/backup_${D}/
mysqldump -h ${HOST} -u ${DB_USER} -p${DB_PASS} --routines databasename > /bacula/backups_prod/wordpressec/backup_${D}/backup_databasename_`date +%Y%m%d_%H%M`.sql
tar -zcf /bacula/backups_prod/wordpressec/backup_${D}.tar.gz /bacula/backups_prod/wordpressec/backup_${D}
rm -rf /bacula/backups_prod/wordpressec/backup_${D}