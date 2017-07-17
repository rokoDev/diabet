#! /bin/bash

#list all targets, build configurations, and schemes used in project
xcodebuild -list -project proj.ios_mac/Diabet.xcodeproj

#build test target for mac os
xcodebuild -scheme DiabetTest  build