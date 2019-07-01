#!/bin/bash

# This command appends "pulse" to the logging file and keeps the hardware wathdog from restarting the machine, I use echo, but "touch" is propably an even better choice
echo "pulse" >> /var/log/timelapse/pulse.log

# This command calls HTTP GET on the url specified. See the picture taking script for more info. It is just for logging purposes 
curl -s https://YOUR-DOMAIN/timelapse/pulse >/dev/null 

