#!/bin/sh 

rsync -r cmesworldpi@40.71.203.3:~/elif/CMES-Pi/assets/XML/ $HOME/PiBackups/NewLogs --delete
rsync -r cmesworldpi@40.71.203.3:~/elif/CMES-Pi/assets/Tags/ $HOME/PiBackups/NewTags --delete
cp $HOME/PiBackups/NewLogs/Server_XML.xml /var/www/html/CMES-Pi/assets/XML/Server_XML.xml
cp $HOME/PiBackups/NewLogs/Top_Topics.xml /var/www/html/CMES-Pi/assets/XML/Top_Topics.xml
cp $HOME/PiBackups/NewLogs/New_Uploads.xml /var/www/html/CMES-Pi/assets/XML/New_Uploads.xml
cp $HOME/PiBackups/NewTags/tagsAndTitle.txt /var/www/html/CMES-Pi/assets/Tags/tagsAndTitle.txt
