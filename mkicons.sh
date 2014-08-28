#!/bin/bash -e
#
# Generates PhoneGap / Cordova icons for all platforms from a single SVG icon file.
#
# Ref: http://stackoverflow.com/questions/9647770/what-are-best-practices-for-using-svg-icons-on-android
#
# Ideas for adding startup screen generation code using Inkscape layers:
# - http://stackoverflow.com/questions/9652573/inkscape-command-line-programming

set -x

# Windows
INKSCAPE="/C/Program Files (x86)/Inkscape/inkscape.exe"
OPTS=--export-background-opacity=0

# OSX
# INKSCAPE="/Applications/Inkscape.app/Contents/Resources/bin/inkscape" 
# OPTS=--without-gui --export-background-opacity=0

SVG=icon-500x500.svg
DEST=../../phonegap/www/res/icon

# Sencha Touch Icons 
"$INKSCAPE" -w36 $OPTS --export-png=Icon_Android36.png $SVG
"$INKSCAPE" -w48 $OPTS --export-png=Icon_Android48.png $SVG
"$INKSCAPE" -w50 $OPTS --export-png=icon-spot~ipad.png $SVG
"$INKSCAPE" -w57 $OPTS --export-png=Icon.png $SVG
"$INKSCAPE" -w114 $OPTS --export-png=Icon@2x.png $SVG
"$INKSCAPE" -w72 $OPTS --export-png=Icon~ipad.png $SVG
"$INKSCAPE" -w144 $OPTS --export-png=Icon~ipad@2x.png $SVG
"$INKSCAPE" -w500 $OPTS --export-png=iTunesArtwork.png $SVG

# PhoneGap Android
"$INKSCAPE" -w36 $OPTS --export-png=$DEST/android/icon-36-ldpi.png $SVG
"$INKSCAPE" -w48 $OPTS --export-png=$DEST/android/icon-48-mdpi.png $SVG
"$INKSCAPE" -w72 $OPTS --export-png=$DEST/android/icon-72-hdpi.png $SVG
"$INKSCAPE" -w96 $OPTS --export-png=$DEST/android/icon-96-xhdpi.png $SVG
#  Not configured in Cordova
"$INKSCAPE" -w144 $OPTS --export-png=$DEST/android/icon-144-xxhdpi.png $SVG
"$INKSCAPE" -w192 $OPTS --export-png=$DEST/android/icon-192-xxxhdpi.png $SVG

# PhoneGap iOS
"$INKSCAPE" -w57 $OPTS --export-png=$DEST/ios/icon-57.png $SVG
"$INKSCAPE" -w72 $OPTS --export-png=$DEST/ios/icon-72.png $SVG
"$INKSCAPE" -w114 $OPTS --export-png=$DEST/ios/icon-57-2x.png $SVG
"$INKSCAPE" -w144 $OPTS --export-png=$DEST/ios/icon-72-2x.png $SVG

# PhoneGap Bada
"$INKSCAPE" -w128 $OPTS --export-png=$DEST/bada/icon-128.png $SVG
"$INKSCAPE" -w48 $OPTS --export-png=$DEST/bada-wac/icon-48-type5.png $SVG
"$INKSCAPE" -w50 $OPTS --export-png=$DEST/bada-wac/icon-50-type3.png $SVG
"$INKSCAPE" -w80 $OPTS --export-png=$DEST/bada-wac/icon-80-type4.png

# PhoneGap BlackBerry 
"$INKSCAPE" -w80 $OPTS --export-png=$DEST/blackberry/icon-80.png $SVG

# PhoneGap Tizen
"$INKSCAPE" -w128 $OPTS --export-png=$DEST/tizen/icon-128.png $SVG

# PhoneGap Web OS
"$INKSCAPE" -w64 $OPTS --export-png=$DEST/webos/icon-64.png $SVG

# PhoneGap Windows Phone
"$INKSCAPE" -w173 $OPTS --export-png=$DEST/windows-phone/icon-173-tile.png $SVG
"$INKSCAPE" -w48 $OPTS --export-png=$DEST/windows-phone/icon-48.png $SVG
"$INKSCAPE" -w62 $OPTS --export-png=$DEST/windows-phone/icon-62-tile.png $SVG
