#!/bin/bash

tar xvzf installs/pip-20.0.2.tar.gz -C installs/ || exit
cd installs/pip-20.0.2 || exit

python3.7 setup.py build || exit

echo ${password} | sudo -S python3.7 setup.py install || exit
