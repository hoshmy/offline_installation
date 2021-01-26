#!/bin/bash

cd installs || exit

echo ${password} | sudo -S python3.7 -m pip install setproctitle-1.1.10.tar.gz --no-index || exit

