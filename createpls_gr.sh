#!/bin/bash
#Liquidsoap Playlist Creator [Greek] Unix Script by Alexandros Mitsis

echo "Πληκτρολογήστε τον Φάκελο Προέλευσης των MP3 αρχείων (π.χ. /home/$USER/mp3s): "

read in_folder

if [ -n "$in_folder" ]; then
	FOLDER=$in_folder
    echo "Επιλεγμένος Φάκελος: "$FOLDER
else
	FOLDER="/home/$USER/mp3s"
    echo "Προεπιλεγμένος Φάκελος: "$FOLDER
fi

DATE=$(date +"%Y-%m-%d_%H%M")

echo "Όνομα Λίστας: "$DATE".m3u"

ls $FOLDER/*.mp3 > $DATE.m3u

echo "Η Λίστα Δημιουργήθηκε!"
