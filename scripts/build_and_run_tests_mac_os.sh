#! /bin/bash

echo "start building tests..."
xcodebuild -project ./proj.ios_mac/Diabet.xcodeproj -target DiabetTest -configuration Debug

#local build_status = $?
#echo "build_status >> $build_status"

#local status=$?
#if [ $build_status -ne 0 ]; then
#echo "error with $1" >&2
#return $build_status
#fi
#echo "test build succeeded"

echo "running tests..."
./proj.ios_mac/build/Debug/DiabetTest
#local run_tests_status = $?
#echo "run_tests_status >> $run_tests_status"
#return $run_tests_status