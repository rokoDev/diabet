#! /bin/bash

rm -rf build

cmake -E make_directory build
cd build

cmake -G "Xcode" -DCMAKE_BUILD_TYPE=Debug ..
cmake --build . --config Debug

cd unit_tests
ctest -VV --output-on-failure -C Debug