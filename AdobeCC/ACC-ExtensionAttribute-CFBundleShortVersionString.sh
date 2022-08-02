#!/bin/sh
CFBundleShortVersionString=""
if [ -f "/Applications/Utilities/Adobe Creative Cloud/ACC/Creative Cloud.app/Contents/Info.plist" ]; then
    CFBundleShortVersionString=$(defaults read "/Applications/Utilities/Adobe Creative Cloud/ACC/Creative Cloud.app/Contents/Info.plist" CFBundleShortVersionString | tail -1)
fi
echo "<result>$CFBundleShortVersionString</result>"
exit 0
