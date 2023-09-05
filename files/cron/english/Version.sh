#!/bin/sh 
#manoj - Aug 2017

rsync -rut --exclude-from 'Version-rsync-exclude-list.txt' cmesworldpi@40.71.203.3:~/elif/CMES-Pi/ $HOME/PiBackups/NewVersion/CMES-Pi/
