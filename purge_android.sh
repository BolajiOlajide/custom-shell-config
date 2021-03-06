#!/usr/bin/env bash

set -eo pipefail # adding this so if any command should fail

# How to Completely Remove Android Studio
# Execute these commands from the terminal

rm -Rf /Applications/Android\ Studio.app
rm -Rf ~/Library/Preferences/AndroidStudio*
rm ~/Library/Preferences/com.google.android.studio.plist
rm -Rf ~/Library/Application\ Support/AndroidStudio*
rm -Rf ~/Library/Logs/AndroidStudio*
rm -Rf ~/Library/Caches/AndroidStudio*
# if you would like to delete all projects:

rm -Rf ~/AndroidStudioProjects
# to remove gradle related files (caches & wrapper)

rm -Rf ~/.gradle
# use the below command to delete all Android Virtual Devices(AVDs) and *.keystore. note: this folder is used by others Android IDE as well, so if you still using other IDE you may not want to delete this folder)

rm -Rf ~/.android
# to delete Android SDK tools

rm -Rf ~/Library/Android*

echo "Done uninstalling Android Studio"

# Reference: https://gist.github.com/tahmidsadik112/f08356d14a85d898299a
