#!/bin/sh 
#manoj - Aug 2017

tar --exclude='assets/Content' --exclude='assets/Local' -zcvf $HOME/PiBackups/AppBackup_`date +%d_%m_%y`.tar.gz /var/www/html/CMES-Pi/
