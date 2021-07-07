#!/bin/bash

# Create a Kernel Folder
echo "Create the Kernel folder"
mkdir ~/Kernel/

# Go to the Folder
cd ~/Kernel/

# Downloading the Kernel-source over git
echo "Do you want the (stable) Kernel or the (mainline) Kernel?"
read kernel
if [[ $kernel == "stable" ]]; then
  echo "Downloading stable Linux Kernel over git"
  echo ""
  git clone https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git
  cd ~/Kernel/linux/

  elif [[ $kernel == "mainline" ]]; then
      echo ""
      echo "Downloading mainline Linux Kernel over git"
      echo ""
      git clone https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
      cd ~/Kernel/linux
  else
    echo ""
    echo "Error, Please type the again!"
fi

# Copy the last installed Kernel-source
echo "Fetch the actually configuration"
cp /boot/config-$(uname -r) .config

# Make with Menuconfig (Go to Exit and hit enter)
make menuconfig

# Kernel compiler
echo "Build the new Kernel"
make && make modules_install && sudo make install

echo "Congratulation, your Linux Kernel is finish"
echo "You use the new Linux Kernel on your System"
