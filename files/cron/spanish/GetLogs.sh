#!/bin/sh 

rsync -r cmesworldpi@40.71.203.3:~/elif/SP_CMES-Pi/assets/XML/ $HOME/PiBackups/NewLogs --delete
rsync -r cmesworldpi@40.71.203.3:~/elif/SP_CMES-Pi/assets/Tags/ $HOME/PiBackups/NewTags --delete
cp $HOME/PiBackups/NewLogs/SP_Server_XML.xml /var/www/html/CMES-Pi/assets/XML/SP_Server_XML.xml
cp $HOME/PiBackups/NewLogs/SP_Top_Topics.xml /var/www/html/CMES-Pi/assets/XML/SP_Top_Topics.xml
cp $HOME/PiBackups/NewLogs/SP_New_Uploads.xml /var/www/html/CMES-Pi/assets/XML/SP_New_Uploads.xml
cp $HOME/PiBackups/NewTags/SP_tagsAndTitle.txt /var/www/html/CMES-Pi/assets/Tags/SP_tagsAndTitle.txt
