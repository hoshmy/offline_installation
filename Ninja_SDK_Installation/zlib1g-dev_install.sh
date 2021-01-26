#!/bin/bash

#echo ${password} | sudo -S apt "Dir::Etc::Sourcelist=/home/soi/install_script_SDK/sources.list" source zlib1g-dev

#echo ${password} | sudo -S apt-get update

echo ${password} | sudo -S apt-get install zlib1g-dev --allow-unauthenticated -y 

