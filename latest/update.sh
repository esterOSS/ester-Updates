#!/usr/bin/env bash
pkexec su
mkdir temp
cd temp
wget https://github.com/esterOSS/assets/releases/download/1.0.0/esterOSGUIupdater
mv esterOSGUIupdater esteros-updater
killall -9 esteros-updater
cp esteros-updater /bin
rm esteros-updater
cd ..
rmdir --ignore-fail-on-non-empty temp
echo Updating updater done!
./esteros-updater
