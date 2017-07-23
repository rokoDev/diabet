#! /bin/bash

echo "start building tests..."
xcodebuild -project ./Diabet.xcodeproj -target DiabetTest -configuration Debug CONFIGURATION_BUILD_DIR="../build"

local build_status = $?
echo "build_status >> $build_status"

local status=$?
if [ $build_status -ne 0 ]; then
echo "error with $1" >&2
return $build_status
fi
echo "test build succeeded"

echo "running tests..."
../build/DiabetTest
local run_tests_status = $?
echo "run_tests_status >> $run_tests_status"
return $run_tests_status