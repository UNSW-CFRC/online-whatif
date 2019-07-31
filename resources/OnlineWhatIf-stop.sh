#!/bin/bash
STAT=`sudo service tomcat8 status | grep pid`
if [ -n "$STAT" ] ; then
    sudo service tomcat8 stop
    zenity --info --text "Online WhatIf stopped"
fi
/usr/local/bin/geoserver_stop.sh &
