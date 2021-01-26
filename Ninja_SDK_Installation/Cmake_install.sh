#!/bin/bash

#---------------online v1---------------#

#echo ${password} | sudo -S apt-get -f install --allow-unauthenticated -y || exit
#echo ${password} | sudo -S apt install cmake --allow-unauthenticated -y || exit

#---------------offline v1--------------#

 tar xvzf installs/cmake-3.18.0.tar.gz -C installs/ || exit
 cd installs/cmake-3.18.0 || exit
 ./bootstrap && make || exit
 echo ${password} | sudo -S make install || exit

#---------------offline v2--------------#
