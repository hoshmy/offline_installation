#!/bin/bash

cd installs || exit

echo ${password} | sudo -S python3.7 -m pip install psutil-5.3.0.tar.gz --no-index || exit

