#! /bin/bash

echo "building and running tests..."
xcodebuild -list -project ./proj.ios_mac/Diabet.xcodeproj

rm -rf build
cmake -E make_directory build

echo "Building test target for Mac OS: DiabetTest ..."
echo $pwd
xcodebuild -project ./proj.ios_mac/Diabet.xcodeproj -target DiabetTest -configuration Debug CONFIGURATION_BUILD_DIR="../build"

./build/DiabetTest

#rm -rf build
#
#cmake -E make_directory build
#cd build
#
#cmake -G "Xcode" -DCMAKE_BUILD_TYPE=Debug ..
#cmake --build . --config Debug
#
#cd unit_tests
#ctest -VV --output-on-failure -C Debug