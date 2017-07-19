#! /bin/bash

echo "instatlling cmake..."
cmake_version_id="3.6"
cmake_version="3.6.1"
if [ $TRAVIS_OS_NAME = osx ]
then
	brew update
    brew outdated cmake || brew upgrade cmake
    brew outdated doxygen || brew upgrade doxygen
    brew outdated graphviz || brew upgrade graphviz
elif [ $TRAVIS_OS_NAME = linux ]
then
  #install cmake--------------------------------------------------------------------
  mkdir ~/cmake_tmp
  cd ~/cmake_tmp
  CMAKE_URL="https://cmake.org/files/v${cmake_version_id}/cmake-$cmake_version-Linux-x86_64.tar.gz"
  wget $CMAKE_URL
  tar xf cmake-$cmake_version-Linux-x86_64.tar.gz
  #sudo cp -r cmake-$cmake_version-Linux-x86_64/* /usr/local
  sudo cp -r cmake-$cmake_version-Linux-x86_64/* /usr
  cd ..
  rm -rf ~/cmake_tmp

fi