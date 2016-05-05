#!/bin/bash
git clone https://github.com/samhitha30/ionic-app.git /application
cd /application
unzip sensor.zip
cd sensor
ionic build android
cp /application/sensor/platforms/android/build/outputs/apk/android-debug.apk /application
cd ..
git remote set-url origin https://samhitha30:github123@github.com/samhitha30/ionic-app.git
git init
git config --global user.email "samhitha225@gmail.com"
git config --global user.name "samhitha30"
#git rm -f androi-debug.apk
#git commit -m 'removed'
#git push
git add -u android-debug.apk
git commit -m 'added apk'
git remote -v
git push
cd /application/sensor
ionic serve -a
#if(curl http://52.63.237.171:8100); then echo"Successful"; else echo"Failed";
#fi
