#!/bin/bash
D=$(date +'%Y%m%d')
mkdir -p /bacula/backups_prod/odooec/backup_${D}/
PGPASSWORD="colocarpassworddeBD" pg_dump -h endpoint -U dbuser databasename > /bacula/backups_prod/odooec/backup_${D}/backup_databasename_`date +%Y%m%d_%H%M`.sql
tar -zcf /bacula/backups_prod/odooec/backup_${D}.tar.gz /bacula/backups_prod/odooec/backup_${D}
rm -rf /bacula/backups_prod/odooec/backup_${D}