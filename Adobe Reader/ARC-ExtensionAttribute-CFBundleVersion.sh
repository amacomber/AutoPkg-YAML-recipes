#!/bin/sh

3PPAPP="/Applications/Adobe Acrobat Reader DC.app/Contents/Info.plist"

CFBundleVersion=""
if [ -f "$3PPAPP" ]; then
    CFBundleVersion=$(defaults read "$3PPAPP" CFBundleVersion)
fi
echo "<result>$CFBundleVersion</result>"
exit 0
