#!/bin/bash

#arguments:
#	1- the install script
#	2- name of the install
run_install_script()
{	
	sudo -k
	start=$SECONDS
	echo "${PWD}   " & ls | grep $1
	if [[ ${installs_scripts_path} != "${PWD}" ]]
	then
		cd ${installs_scripts_path}
	fi
	RED='\033[0;31m'
	GREEN='\033[0;32m'
	BLUE='\033[0;34m'
	NC='\033[0m' # No Color
	
	echo
	echo >> logs/install_bash.txt
	
	echo -e "${BLUE}installing $2${NC}\n"
	echo "installing $2" >> logs/install_bash.txt
	
	chmod +x $1
	bash $1
	## The exit status of the last command run is 
	## saved automatically in the special variable $?.
	## Therefore, testing if its value is 0, is testing
	## whether the last command ran correctly.
	if [[ $? > 0 ]]
	then
		echo -e "${RED}$2 install faild${NC}"
		echo "$2 install faild" >> logs/install_bash.txt
		echo "press enter to continue"
		read v
	else
		duration=$(( SECONDS - start ))
		echo -e "${GREEN}$2 installed successfully${NC}"
		echo "$2 installed successfully" >> logs/install_bash.txt
		echo "$2 took ${duration} seconds"
		echo "$2 took ${duration} seconds" >> logs/install_bash.txt
	fi
	echo
	echo >> logs/install_bash.txt
}
get_password()
{
	correct="False"
	while [ ${correct} != "True" ]
	do
		sudo -k
		echo "please enter password"
		read password
		echo ${password} | sudo -S true && correct="True"
	done
	export password
}

get_password

echo ${password} | sudo -S rm /var/lib/apt/lists/lock
echo ${password} | sudo -S rm /var/cache/apt/archives/lock
echo ${password} | sudo -S rm /var/lib/dpkg/lock*

mkdir logs
touch logs/install_bash.txt

installs_scripts_path=$PWD
##### make temp_apt_conf.d file ####
#touch sources.list
#echo "##############################" >> sources.list
#echo "deb file:$PWD/mini_repo ./" >> sources.list
#echo "##############################" >> sources.list
##999 prefix is important 
#touch 999apt-sdk
#echo "Dir::Etc \"$PWD\";" >> 999apt-sdk
#echo ${password} | sudo -S scp 999apt-sdk /etc/apt/apt.conf.d/
#################################### 

chmod +x getpkg.sh

echo ${password} | sudo -S apt-get update

run_install_script zlib1g-dev_install.sh zlib1g
run_install_script python3-dev_install.sh python3-dev
run_install_script libffi-dev_install.sh libffi
run_install_script python_install.sh python3.7.3
run_install_script pip_install.sh pip
run_install_script setproctitle_install.sh setproctitle
run_install_script psutil_install.sh psutil
run_install_script redis-server_install.sh redis-server
run_install_script redis-py_install.sh redis-py
run_install_script build-essential_install.sh build-essential
run_install_script libevent-dev_install.sh libevent-dev 
run_install_script openssl_install.sh openssl
run_install_script Cmake_install.sh Cmake
run_install_script redis-cpp_install.sh redis-cpp
run_install_script hiredis_install.sh hiredis
run_install_script Boost_install_new.sh boost

####### After install_script  Delete  temp files ####### 
#rm -f 999apt-sdk
#rm -f sources.list
#echo ${password} | sudo -S rm -f /etc/apt/apt.conf.d/999apt-sdk

