#!/bin/bash

source_dir="/home/projekt/Desktop/Skrypty"

backup_dir="/home/projekt/Desktop/"

timestamp=$(date +"%Y%m%d%H%M%S")
backup_file="backup_$timestamp"

rsync -av --delete $source_dir $backup_dir/$backup_file

if [$? -eq 0]; then
    echo "Kopia zapasowa została pomyślnie utworzona w $backup_dir/$backup_file"
else
    echo "Błąd podczas tworzenia kopii zapasowej"
fi