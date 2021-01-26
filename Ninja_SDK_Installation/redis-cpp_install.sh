#!/bin/bash

#git clone https://github.com/Cylix/cpp_redis.git installs/cpp_redis || exit

echo ${password} | sudo -S rm -r installs/cpp_redis-master
unzip installs/cpp_redis-master.zip -d installs/ || exit

echo ${password} | sudo -S rm -r installs/cpp_redis-master/tacopie-master
unzip installs/tacopie-master.zip -d installs/cpp_redis-master/ || exit

cd installs/cpp_redis-master || exit

#git clone https://github.com/Cylix/tacopie.git || exit

echo ${password} | sudo -S rm -r build

echo ${password} | sudo -S rm -r tacopie
mv tacopie-master tacopie

mkdir build && cd build && cmake .. && make  || exit
echo ${password} | sudo -S make install || exit
