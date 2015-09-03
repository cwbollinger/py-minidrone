#! /usr/bin/env bash

# This script installs all the prereqs for the py-minidrone software on an ubuntu live cd

sudo apt-get update
sudo apt-get -y upgrade
cd ~
wget https://bootstrap.pypa.io/get-pip.py
python Downloads/get-pip.py
pip install -U pip
sudo pip install pexpect
sudo apt-get -y install libglib2.0-dev
sudo apt-get -y install libdbus-1-dev
sudo apt-get -y install libudev-dev
sudo apt-get -y install libical-dev
sudo apt-get -y install libreadline-dev
wget http://www.kernel.org/pub/linux/bluetooth/bluez-5.30.tar.xz
tar xf bluez-5.30.tar.xz
cd bluez-5.30
./configure --prefix=/usr --mandir=/usr/share/man --sysconfdir=/etc --localstatedir=/var --enable-experimental --with-systemdsystemunitdir=/lib/systemd/system --with-systemduserunitdir=/usr/lib/systemd
make
sudo make install
sudo cp attrib/gatttool /usr/bin/
