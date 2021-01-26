#!/bin/bash

tar -xvjf installs/boost_1_68_0.tar.bz2 -C installs/ || exit

cd installs/boost_1_68_0 || exit
./bootstrap.sh  || exit

var=$(python3.7 -c "from sysconfig import get_paths as gp; print(gp()[\"include\"])")

export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:$var"

./b2 -j4 cxxflags=-std=c++14 || exit
echo ${password} | sudo -S ./b2 install || exit



