#!/bin/bash

echo ${password} | sudo -S rm -r installs/hiredis-master
unzip installs/hiredis-master.zip -d installs/ || exit

cd installs/hiredis-master || exit

echo ${password} | sudo -S make || exit
echo ${password} | sudo -S make install || exit
echo ${password} | sudo -S make test || exit
