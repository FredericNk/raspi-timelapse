#!/bin/bash

# This line gets the current Month
MONTH=$(date +"%m")

# This line lists all files in the given directory, sorts them by name and calls the given URL with the newest filename. This is for logging purposes only.  
find /media/externalHDD/timelapse/2019/$MONTH/ -type f -print0 | xargs -0 stat --format '%Y:%y%n' | sort -nr | head -1 | cut -d: -f2- | cut -d/ -f2- | tr _ - | (read filevar; curl -s https://YOUR-DOMAIN/timelapse/latest/$filevar >/dev/null; echo $filevar)

