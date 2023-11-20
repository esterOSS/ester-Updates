#!/usr/bin/env bash
sudo mkdir temp
cd temp
sudo wget https://github.com/esterOSS/assets/releases/download/1.0.0/esterOSGUIupdater
sudo mv esterOSGUIupdater esteros-updater
sudo killall -9 esteros-updater
sudo cp esteros-updater /bin
sudo rm esteros-updater
cd ..
sudo rmdir --ignore-fail-on-non-empty temp
echo Updating updater done!
./esteros-updater
