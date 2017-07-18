#! /bin/bash

git submodule init
git submodule update

cd cocos2d
#should_save_deps="yes" #wether to save 'v3-deps-109e.zip' file
echo | python ./download-deps.py

cd ..

#rm -rf publish
#
#cmake -E make_directory publish

cd proj.ios_mac
#list all targets, build configurations, and schemes used in project
xcodebuild -list -project Diabet.xcodeproj

rm -rf build
cmake -E make_directory build

echo "Building test target for Mac OS: DiabetTest ..."

xcodebuild -project proj.ios_mac/Diabet.xcodeproj -target DiabetTest -configuration Debug CONFIGURATION_BUILD_DIR="../build"

./build/DiabetTest

#build test target for mac os
#OUTPUT=`xcodebuild -target DiabetTest -sdk macosx10.6 -configuration Debug`
#RESULT=`echo "$OUTPUT" | grep "\\*\\* BUILD "`
#if [ "$RESULT" != "** BUILD SUCCEEDED **" ]
#then
#    echo "$OUTPUT"
#    exit 1
#fi
#echo "${RESULT}\n"