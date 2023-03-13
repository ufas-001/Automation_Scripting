## Change file extension
SRC="/mnt/c/Users/OWNER/Documents/Change_File_Extension"
FROM_EXTENSION=".docx"
TO_EXTENSION=".pdf"
for File in "$SRC"/*"$FROM_EXTENSION"
do
    if [ -f "$File" ]
        then
            Filename=$(basename "$File")
            name="${Filename%.*}"
            new_filename="${name}$TO_EXTENSION"
            mv "$File" "$SRC/$new_filename"
        echo "$new_filename"
    fi
done
##