#!/bin/sh

# Backup files listed in backup_dirs.txt to a USB using rsync
#
# I add the USB to fstab and use this script with cron 

usb_dir="/media/USB_backup/"
backup_dirs="/home/fdecunta/.config/backup/backup_dirs.txt"

echo "Arrancando backup..."
sleep 3

while IFS= read -r dir; do
    rsync -aivr --del "/home/fdecunta/$dir" "$usb_dir" && touch "$usb_dir/$dir"
done < "$backup_dirs"
