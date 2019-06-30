# raspi-timelapse
Some information I gathered while building by own long time (1 year) timelapse camera with a raspi zero and the camera module v2.
The final setup is a headless camera module which takes a picture every 2 minutes (determined by a cronjob so highly customizable, although faster than 1 min will require some other hacks), which saves the pictures to an external HDD named YYYY-MM-DD_hhmmss.jpg.

Specs:
  - Images every 2 minutes
  - Resolution 3280x2464px or if you crop it to 16:9: 3280:1845px
  - Runtime depens on the size of the HDD and when you take pictures. With my modes etc. I need around 50 GB per Month 
  

# Hardware
Raspberry pi zero
Raspberry pi camera module v2
External HDD
 - IMPORANT! Power supply externally with a power plug! I don't know if the raspberry pi zero can supply enough power over its micro usb ports and didn't want to find out. 
 - Size depending on your needs, I got a 2 TB one
SD Card (I think minium 8 GB) I used 16 GB
A card reader or some other way to program the SD Card
 
Optional:
Raspberry pi encasing
Some WiFi Network to connect to 
A public Webserver owned by you

# Software
Current Raspbian Lite (at the time of writing this it was Raspbian Buster Lite, Version June 2019)
Etcher 
