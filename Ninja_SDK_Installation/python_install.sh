#!/bin/bash

#---------------online v1---------------#

# touch logs/python_install_log.txt
# echo "echo ${password} | sudo -S apt update || exit" >> logs/python_install_log.txt
# # 1. Start by updating the packages list and installing the prerequisites:
# echo ${password} | sudo -S apt update || exit

# echo "echo ${password} | sudo -S apt install software-properties-common || exit" >> logs/python_install_log.txt
# echo ${password} | sudo -S apt install software-properties-common -y || exit


# echo "echo ${password} | sudo -S add-apt-repository ppa:deadsnakes/ppa || exit" >> logs/python_install_log.txt
# # 2. Next, add the deadsnakes PPA to your sources list:
# echo ${password} | sudo -S add-apt-repository ppa:deadsnakes/ppa || exit




# echo "echo ${password} | sudo -S apt update || exit" >> logs/python_install_log.txt
# # 1. Start by updating the packages list and installing the prerequisites:
# echo ${password} | sudo -S apt update || exit

# echo "echo ${password} | sudo -S apt install software-properties-common || exit" >> logs/python_install_log.txt
# echo ${password} | sudo -S apt install software-properties-common -y || exit


# echo "echo ${password} | sudo -S add-apt-repository ppa:deadsnakes/ppa || exit" >> logs/python_install_log.txt
# # 2. Next, add the deadsnakes PPA to your sources list:
# echo ${password} | sudo -S add-apt-repository ppa:deadsnakes/ppa || exit

#echo "echo ${password} | sudo -S apt install python3.7 || exit" >> logs/python_install_log.txt
# 4. Once the repository is enabled, install Python 3.7 with:
#echo ${password} | sudo -S apt install python3.7 -y || exit
# echo "complete" >> logs/python_install_log.txt


#---------------offline v1--------------#


# cd installs/python_installs || exit

# echo ${password} | sudo -S apt install build-essential_12.1ubuntu2_amd64.deb ./libffi-dev_3.1-2+deb8u1_amd64.deb ./libgdbm-dev_1.8.3-13.1_amd64.deb ./libncurses5-dev_5.9+20140913-1+deb8u3_amd64.deb ./libnss3-dev_3.26-1+debu8u10_amd64.deb  ./libreadline-dev_6.3-8+b3_amd64.deb ./libssl-dev_1.1.1d-2_amd64.deb ./zlib1g-dev_1.2.8.dfsg-2+deb8u1_amd64.deb ./zlib1g-dev_1.2.8.dfsg-2ubuntu4.3_amd64.deb || exit

# echo ${password} | sudo -S tar xzf Python-3.7.3.tgz || exit

# cd Python-3.7.3 || exit
# echo ${password} | sudo -S ./configure --enable-optimizations || exit
# echo ${password} | sudo -S make altinstall || exit


#---------------offline v2--------------#


# cd installs/python_installs || exit
# python_installs_path=${PWD}

# echo ${password} | sudo -S apt-get install python3-dev -y
# echo ${password} | sudo -S apt-get install libffi-dev -y
# echo ${password} | sudo -S apt-get install python-dev -y
# echo ${password} | sudo -S apt update
# echo ${password} | sudo -S apt install software-properties-common -y
# echo ${password} | sudo -S apt-get install libc6 libexpat1 libpython3.3-minimal zlib1g -y

# echo ${password} | sudo -S apt-get install build-essential checkinstall -y
# echo ${password} | sudo -S apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev -y
# sudo apt-get install python3.7-dev -y

# echo ${password} | sudo -S apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev -y
# cp Python-3.7.3.tar.xz /tmp
# cp python3.7 get-pip.py /tmp
# cd /tmp
# #wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tar.xz
# tar -xf Python-3.7.3.tar.xz
# cd Python-3.7.3
# ./configure --enable-optimizations
# make -j 1
# echo ${password} | sudo -S make altinstall

# #curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# echo ${password} | sudo -S python3.7 ${python_installs_path}/get-pip.py

#---------------offline v3--------------#

cd installs/python_installs || exit
python_installs_path=${PWD} || exit

#echo ${password} | sudo -S  apt update

#echo "\n"
#echo ${password} | sudo -S apt-get install build-essential --allow-unauthenticated -y
#echo ${password} | sudo -S apt-get install zlib1g-dev --allow-unauthenticated -y
#echo ${password} | sudo -S apt-get install libncurses5-dev --allow-unauthenticated -y
#echo ${password} | sudo -S apt-get install libgdbm-dev --allow-unauthenticated -y
#echo ${password} | sudo -S apt-get install libnss3-dev --allow-unauthenticated -y
#echo ${password} | sudo -S apt-get install libssl-dev --allow-unauthenticated -y
#echo ${password} | sudo -S apt-get install libreadline-dev --allow-unauthenticated -y
#echo ${password} | sudo -S apt-get install libffi-dev --allow-unauthenticated -y

tar -xf Python-3.7.3.tgz || exit

cd Python-3.7.3
./configure --enable-optimizations

make -j 1

echo ${password} | sudo -S make altinstall
