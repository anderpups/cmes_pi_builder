#!/bin/sh 
#manoj - aug 2017

tar zcf $HOME/PiBackups/content_`date +%d_%m_%y`.tar.gz /var/www/html/CMES-Pi/assets/Content/

#rsync -r /var/www/html/CMES-Pi/assets/Content/ $HOME/PiBackups/Content/ --delete
