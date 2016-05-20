#!/bin/bash
#Radio Mesopotamos Playlist Creator [English] Unix Script by Alexandros Mitsis

echo "Please insert your folder Containing Your MP3 files (e.g. /home/$USER/radio/mp3s/en): "

read in_folder

if [ -n "$in_folder" ]; then
	FOLDER=$in_folder
    echo "Using Directory: "$FOLDER
else
	FOLDER="/home/$USER/mp3s"
    echo "Using Default Directory: "$FOLDER
fi

DATE=$(date +"%Y-%m-%d_%H%M")

echo "Playlist Name: "$DATE".m3u"

ls $FOLDER/*.mp3 > $DATE.m3u

echo "Playlist created!"
