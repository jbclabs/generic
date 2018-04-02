#! /bin/sh
# jbc labs generic build script
# Requirements - None
# Copies the everything from the code_dir and copies it into /usr/src/app/

#Log everything in /code/build.log
logfile=/tmp/build.log
exec > $logfile 2>&1
set -x

mkdir -p /usr/src/app

#Move the remainder of the node project into APP_HOME
cp -rf /code/* /usr/src/app
#Cleaning up after ourselves
rm -rf /code
