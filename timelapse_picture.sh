#!/bin/bash

# Getting the current date and time
DATE=$(date +"%Y-%m-%d_%H%M%S")
Year=${DATE:0:4}
Month=${DATE:5:2}

# More information is obviously online, but this script takes a picture with quality 100 and saves it to the given path
# I tried an optimization by using "-t 1" as an argument, but gut really bad pictures in the bright sun, because the value is milliseconds before exposure and the information vaires but the camera needs somewhere around 300-500ms to calculate whitebalance etc. so be careful when using this parameter! 
raspistill -q 100 -o /media/externalHDD/timelapse/$Year/$Month/$DATE.jpg

# This command calls an HTTP Get request to the given URL. If you have a public webserver this query (which will be answered by a 404 unless you put a website there/redirect), will show up in the webserver logs
# I used this because my camera is in a wifi which I did not want to tunnel into, so I use this method to send some information out to a server which is already public
# It is only for logging purposes.
curl -s https://YOUR-WEBSERVER/timelapse/picture_taken >/dev/null 

