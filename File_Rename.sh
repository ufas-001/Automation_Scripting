## File Rename Script
SRC="/mnt/c/Users/OWNER/Documents/Files_To_Rename"
Hostname=$(hostname -s)
Day=$(date +%A)
NEW_PREFIX="$Hostname-$Day"
echo $NEW_PREFIX
for File in "$SRC"/*
    do
    if [ -f "$File" ]
        then
        Filename=$(basename "$File")
        Extension="${Filename##*.}"
        Name="${Filename%.*}"
        new_Filename="${NEW_PREFIX}${Name}.${Extension}"
        mv "$File" "$SRC/$new_Filename"
    fi
done
##