#!/bin/bash

# written by ddesmond / Aleks Katunar
# RUN THIS FROM CLI OR DATACRUNCH DASHBOARD as a script!

echo "----------------------------------"
echo "Setup work ENVS"
# SYSTEM
export HOME="/root"
export PIP_ROOT_USER_ACTION=ignore

echo "--------------- pre aria -------------------"
apt update -y && apt install -y aria2

echo "----------------------------------"
echo "Run: Clone repo"
cd /opt
git clone --depth 1 https://github.com/ddesmond/dc-gen3c.git

cd /opt/dc-gen3c
git pull
export DCAPP_PATH=/opt/dc-gen3c



echo "------------- LOGDY ---------------------"
source tools/lodgy.sh

echo "----------------------------------"
echo "Setting up YUM YUM !"


echo "----------------------------------"
echo "Run: setup repo "
cd /opt
git clone --recursive --depth 1 https://github.com/nv-tlabs/GEN3C.git gen3c
export APPROOT=/opt/gen3c

echo "----------------------------------"
echo "Run: setup conda "
cd $DCAPP_PATH
source ./deps.sh

echo "----------------------------------"
echo "Run: install deps conda and python"
source ~/.bashrc
cd $DCAPP_PATH
source ./setup_gen3c_deps.sh

echo "----------------------------------"
echo "Run: install extras "
source ~/.bashrc
cd $DCAPP_PATH
source ./extras.sh

echo "----------------------------------"
echo "Run: install extras "
source ~/.bashrc
cd $DCAPP_PATH
source ./run_gui.sh
