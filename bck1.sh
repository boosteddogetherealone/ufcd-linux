#!/bin/bash
#
#
#
#bck1.sh
#O quê?
backup_files="/home/rui/labfiles/dir4"

#para onde?
dest="/mnt/backup"

#Nome do arquivo
dia=$(date +%A)
#
posto=$(hostname -s)
#
arquivo="$posto-$dia.tgz"
#
echo "cópia de $backup_files para $dest/$arquivo"
date
echo
tar czf $dest/$arquivo $backup_files
#
echo
echo "cópia finalizada!"
date
#
ls -lh $dest
