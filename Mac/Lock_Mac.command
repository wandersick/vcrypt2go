# Part of vCrypt2Go Lock-and-Unlock Utilities by wandersick
# Script filename: Lock_Mac.command
# Description: Run to lock drive on Mac OS X for VeraCrypt containers and partitions
# Version: 0.1
# Date: 17-Feb-2018
# Language: Shell (Mac OS X)

# ** Use AppleScript to run this instead of running directly to suppress terminal output **

# better than: cd `dirname "$0"` which generates errors when path contains space
dirPath=`dirname "$0"`
cd "$dirPath"

# dismount all veracrypt volumes

# check if VeraCrypt is installed. If not, install it. Otherwise, auto dismount all file systems or containers (requires visudo and installed VeraCrypt)

if ls /Applications/VeraCrypt.app; then
	/Applications/VeraCrypt.app/Contents/MacOS/VeraCrypt -d --force
else
	cp -rf './.DO_NOT_DELETE/VeraCrypt.pkg' "$TMPDIR"
	osascript -e 'tell app "System Events" to activate'	
	osascript -e 'tell app "System Events" to display dialog "VeraCrypt not detected. It will be installed now." buttons ("OK") default button 1 with icon 0'
	osascript -e "do shell script \"./.DO_NOT_DELETE/vc_silent_setup.command\" with administrator privileges"
	/Applications/VeraCrypt.app/Contents/MacOS/VeraCrypt -d --force
fi

# less aggressive than killall, but requires confirmation

# close terminal if no more than 1 terminal window is open
osascript -e 'tell application "Terminal" to if not ((count windows) > 1) then quit'

# misc notes:

# do not use 'screen' as visudo fails to work
# 'screen -dmS title command', similar to 'start title command' in cmd
# e.g. screen -dmS Unlock ./.DO_NOT_DELETE/VeraCrypt.app/Contents/MacOS/VeraCrypt --auto-mount=devices --force

# sudo is required for auto-mounting/dismounting partitions
# without it, it is required to run VeraCrypt as root beforehand

# close all terminals:
# killall Terminal
# close all terminals (with confirmation):
# osascript -e 'tell app "Terminal" to quit'