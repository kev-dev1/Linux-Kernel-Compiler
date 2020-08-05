#!/bin/bash

# Requirements for Debian/Ubuntu
echo "Install requirements on Debian/Ubuntu"
echo ""
echo ""
sudo apt-get install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison

# Create a Kernel Folder
mkdir /$HOME/Kernel/

# Go to the Folder
cd /$HOME/Kernel/

# Downloading the Kernel-source over git
git clone https://github.com/torvalds/linux.git

cd /linux/

# Copy the last insalled Kernel-source
cp /boot/config-$(uname -r) .config

# Make with Menuconfig (Go to Exit and hit enter)
make menuconfig

# Kernel compiler
make && make modules_install && sudo make install
