#!/bin/sh 

HOSTNAME="$(hostname)"

curl ipinfo.io/ip >> $HOME/PiBackups/$HOSTNAME-ip.xml
