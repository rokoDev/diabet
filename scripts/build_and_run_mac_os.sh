#! /bin/bash

echo "Building <Diabet-desktop> target for Mac OS..."
#xcodebuild -project ./proj.ios_mac/Diabet.xcodeproj -target DiabetTest -configuration Debug CONFIGURATION_BUILD_DIR="../build"
xcodebuild -project ./proj.ios_mac/Diabet.xcodeproj -target Diabet-desktop -configuration Debug

#./build/Diabet-desktop

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