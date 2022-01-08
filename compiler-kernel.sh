#!/bin/bash

# Create a Kernel Folder
echo "Create the Kernel folder"
mkdir ~/Kernel/

# Go to the Folder
cd ~/Kernel/

# Downloading the Kernel-source over git
echo "Do you want the (stable) Kernel, (longterm) Kernel or the (mainline) Kernel?"
read kernel
if [[ $kernel == "stable" ]]; then
  echo "Downloading Linux Kernel Stable over git"
  echo ""
  git clone https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git -b linux-rolling-stable
  cd ~/Kernel/linux/

  elif [[ $kernel == "longterm" ]]; then
      echo ""
      echo "Downloading Linux Kernel LTS over git"
      echo ""
      git clone https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git -b linux-rolling-lts
      cd ~/Kernel/linux
      
  elif [[ $kernel == "mainline" ]]; then
  echo ""
  echo "Downloading Linux Kernel Mainline over git"
  echo ""
  git clone https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git -m master
  cd ~/Kernel/linux
  
  else
    echo ""
    echo "Error, Please type the again!"
fi

# Copy the last installed Kernel-source
echo "Fetch the actually configuration"
cp /boot/config-$(uname -r) .config

# Kernel compiler
echo "Build the new Kernel"
make && make modules_install && sudo make install

echo "Congratulation, your Linux Kernel is finish"
echo "You use the new Linux Kernel on your System"
