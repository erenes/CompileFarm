#!/bin/sh

set -e

echo ""
echo "Validating source"
echo "  OS: Linux"
echo "  Compiler: GCC 6"
echo "  Arch: armhf"
echo ""

export CC=/usr/bin/arm-linux-gnueabihf-gcc
export CXX=/usr/bin/arm-linux-gnueabihf-g++

if [ -e "CMakeLists.txt" ]; then
    if [ -e "build" ]; then 
        rm -rf build
    fi
    mkdir build
    cd build
    cmake ..
else
    ./configure --prefix-dir=/usr
fi

make -j2 all
