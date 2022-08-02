#!/bin/sh
CFBundleVersion=""
if [ -f "/Applications/Utilities/Adobe Creative Cloud/ACC/%JSS_INVENTORY_NAME%/Contents/Info.plist" ]; then
    CFBundleVersion=$(defaults read "/Applications/Utilities/Adobe Creative Cloud/ACC/%JSS_INVENTORY_NAME%/Contents/Info.plist" CFBundleVersion | tail -1)
fi
echo "<result>$CFBundleVersion</result>"
exit 0
