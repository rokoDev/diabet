#! /bin/bash

git submodule init
git submodule update

cd cocos2d
should_save_deps="yes" #wether to save 'v3-deps-109e.zip' file
echo | python ./download-deps.py

cd ..

rm -rf publish

cmake -E make_directory publish

cd proj.ios_mac
#list all targets, build configurations, and schemes used in project
xcodebuild -list -project Diabet.xcodeproj

echo "Building test target for Mac OS: DiabetTest ..."

#build test target for mac os
#OUTPUT=`xcodebuild -target DiabetTest -sdk macosx10.6 -configuration Debug`
#RESULT=`echo "$OUTPUT" | grep "\\*\\* BUILD "`
#if [ "$RESULT" != "** BUILD SUCCEEDED **" ]
#then
#    echo "$OUTPUT"
#    exit 1
#fi
#echo "${RESULT}\n"