## What to backup
Backup_Files="/mnt/c/Users/OWNER/Documents/Backup_Files/*"
## Where to backup Files
Destination="/mnt/c/Users/OWNER/Documents/Backup_Destination_Files"
Day=$(date +%A)
Archive="$Day.tgz"
for FILE in $Backup_Files;
    do
        Filename=$(basename "$FILE")
        name="${Filename%.*}"
        echo "Moving $Filename"
        tar czf "$Destination/$name-$Archive" "$FILE"
done
