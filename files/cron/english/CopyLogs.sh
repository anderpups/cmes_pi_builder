#!/bin/sh 
#Manoj - Aug 2017

HOSTNAME="$(hostname)"

cp /var/www/html/CMES-Pi/assets/XML/Server_XML.xml /home/pi/PiBackups/$HOSTNAME-Server_XML_`date +%d_%m_%y`.xml

cp /var/www/html/CMES-Pi/assets/XML/users.xml /home/pi/PiBackups/$HOSTNAME-users_`date +%d_%m_%y`.xml

cp /var/www/html/CMES-Pi/assets/Log/PiAdminLog.txt /home/pi/PiBackups/$HOSTNAME-PiAdminLog_`date +%d_%m_%y`.txt

cp /var/www/html/CMES-Pi/assets/Log/UserLoginLog.txt /home/pi/PiBackups/$HOSTNAME-UserLoginLog.txt

cp /var/www/html/CMES-Pi/assets/Log/UserUsageLog.txt /home/pi/PiBackups/$HOSTNAME-UserUsageLog.txt

cp /var/www/html/CMES-Pi/assets/Log/UserSearchLog.xml /home/pi/PiBackups/$HOSTNAME-UserSearchLog.xml

