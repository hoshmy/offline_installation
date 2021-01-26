#!/bin/bash

chmod +x scripts/*.sh
apt_local

./scripts/install_nano.sh
./scripts/install_sdk.sh  # Runs many other scripts
./scripts/install_java.sh
./scripts/install_pycharm.sh
./scripts/install_cuda_text.sh # Not finished
./scripts/install_libasound2.sh 
./scripts/install_libudev.sh
./scripts/install_libv4l.sh
./scripts/install_libva.sh
./scripts/install_log4cxx.sh
./scripts/install_magewell_depandancies.sh
./scripts/install_numpy.sh
./scripts/install_zlib1g.sh
./scripts/install_samba.sh
./scripts/install_protobuf.sh
./scripts/install_udev.sh
./scripts/install_ffmpeg.sh
./scripts/install_opencv.sh
./scripts/install_magewell_pro_capture.sh   
./scripts/install_rti_dds.sh



