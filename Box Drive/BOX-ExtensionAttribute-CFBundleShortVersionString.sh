#!/bin/sh

3PPAPP="/Applications/zoom.us.app/Contents/Info.plist"

CFBundleShortVersionString=""
if [ -f "$3PPAPP" ]; then
    CFBundleShortVersionString=$(defaults read "$3PPAPP" CFBundleShortVersionString)
fi
echo "<result>$CFBundleShortVersionString</result>"
exit 0
