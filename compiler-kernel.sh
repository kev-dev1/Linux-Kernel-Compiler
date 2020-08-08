#!/bin/bash

# Requirements for Debian/Ubuntu
echo "Install requirements on Debian/Ubuntu"
echo ""
sudo apt-get install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison -y
clear

# Create a Kernel Folder
mkdir /$HOME/Kernel/

# Go to the Folder
cd /$HOME/Kernel/

# Downloading the Kernel-source over git
echo "Downloading Last Linux Kernel"
echo ""
git clone https://github.com/torvalds/linux.git
cd /linux/

# Copy the last installed Kernel-source
cp /boot/config-$(uname -r) .config

# Make with Menuconfig (Go to Exit and hit enter)
make menuconfig

# Kernel compiler
make && make modules_install && sudo make install

# Kernelfolder remove from Homefolder
cd ~/
rm -r /Kernel/
clear

