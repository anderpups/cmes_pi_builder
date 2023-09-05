#!/bin/sh 

sudo cp /etc/dhcpcd.conf /etc/dhcpcd.conf.cron.bak

scp cmesworldpi@40.71.203.3:~/elif/CMES-Pi-ConfigFiles/US/default/dhcpcd.conf /etc/
