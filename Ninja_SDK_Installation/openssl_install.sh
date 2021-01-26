#!/bin/bash

echo ${password} | sudo -S apt-get install libssl-dev --allow-unauthenticated -y || exit

tar xvzf installs/openssl-1.1.1d.tar.gz -C installs/ || exit
cd installs/openssl-1.1.1d/ || exit

./config || exit
make || exit
make test || exit
sudo make install || exit
