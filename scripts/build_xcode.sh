#! /bin/bash

cd proj.ios_mac
#list all targets, build configurations, and schemes used in project
xcodebuild -list -project Diabet.xcodeproj

echo "Building test target for Mac OS: DiabetTest ..."

#build test target for mac os
OUTPUT=`xcodebuild -target DiabetTest -configuration Debug`
RESULT=`echo "$OUTPUT" | grep "\\*\\* BUILD "`
if [ "$RESULT" != "** BUILD SUCCEEDED **" ]
then
    echo "$OUTPUT"
    exit 1
fi
echo "${RESULT}\n"