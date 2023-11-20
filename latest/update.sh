#!/usr/bin/env bash
pkexec mkdir temp
cd temp
pkexec wget https://github.com/esterOSS/assets/releases/download/1.0.0/esterOSGUIupdater
pkexec mv esterOSGUIupdater esteros-updater
pkexec killall -9 esteros-updater
pkexec cp esteros-updater /bin
pkexec rm esteros-updater
cd ..
pkexec rmdir --ignore-fail-on-non-empty temp
echo Updating updater done!
./esteros-updater
