#! /bin/env bash

# This script installs all the prereqs for the py-minidrone software on an ubuntu live cd

cd ~
wget https://bootstrap.pypa.io/get-pip.py
python Downloads/get-pip.py
pip install -U pip
sudo pip install pexpect
sudo apt-get install libglib2.0
sudo apt-get install libdbus-1-dev
sudo apt-get install libudev-dev
sudo apt-get install libical-dev
sudo apt-get install libreadline-dev
wget http://www.kernel.org/pub/linux/bluetooth/bluez-5.30.tar.xz
tar xf bluez-5.30.tar.xz
cd bluez-5.30
./configure
make
sudo make install
sudo cp attrib/gatttool /usr/bin/
