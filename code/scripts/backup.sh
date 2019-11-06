#!/bin/bash

DATA=`date +%Y-%m-%d-%H-%M-%S`
# https://unix.stackexchange.com/questions/59243/tar-removing-leading-from-member-names
BACKUP_FILENAME=/tmp/backup-$DATA.tar.gz

rm -f ${BACKUP_FILENAME}

tar fczP ${BACKUP_FILENAME} /data

echo ${BACKUP_FILENAME}