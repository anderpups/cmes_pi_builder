#!/bin/sh 

rsync -rut --exclude-from 'Version-rsync-exclude-list.txt' /home/pi/PiBackups/NewVersion/CMES-Pi/ /var/www/html/CMES-Pi/
