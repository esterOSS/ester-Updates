#!/usr/bin/env bash
mkdir temp
cd temp
sudo wget https://github.com/esterOSS/assets/releases/download/1.0.0/esterOSGUIupdater
mv esterOSGUIupdater esteros-updater
sudo killall -9 esteros-updater
sudo cp esteros-updater /home/ximi-pc/assets/esteros-updater/esteros-updater/src/
cd ..
rmdir temp
