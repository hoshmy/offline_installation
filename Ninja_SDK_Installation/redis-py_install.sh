#!/bin/bash

tar xvzf installs/redis-2.10.6.tar.gz -C installs/ || exit
cd installs/redis-2.10.6 || exit

python3.7 setup.py build || exit
echo ${password} | sudo -S python3.7 setup.py install || exit
