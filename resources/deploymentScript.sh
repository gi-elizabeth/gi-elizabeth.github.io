#!/bin/bash

clear
echo "Hi, $USER"
source /Users/leong_e/.profileBeta
echo "Switching to CATALINA_HOME"
cd $CATALINA_HOME/webapps
echo "Current Location is $CATALINA_HOME"
echo "Stopping tomcat server, if it is already running"
$CATALINA_HOME/bin/./catalina.sh stop
echo "Tomcat stopped. Check ps -ux | grep 'tomcat' to ensure there is no running tomcat process."
echo "Deleting old war files"
rm -rf ghix*
rm -rf hix*
rm -rf $CATALINA_HOME/logs/*
echo "Copying latest compiled war to the new location"
cp $GHIX_HOME/ghix-web/target/ghix-web.war hix.war
echo "Starting tomcat"
$CATALINA_HOME/bin/./catalina.sh start
tail -f $CATALINA_HOME/logs/catalina.out
