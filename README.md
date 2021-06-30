# Linux-Kernel-Compiler (Under Developing)

This is my first Project to compile a Linux Kernel automation.
This is for user, they want the lasted Linux kernel on your system.

# How to Start?
You can start the Script with:
$ bash ./compiler-kernel.sh

After start downloaded this the last "Stable" Kernel from <a href="https://kernel.org">Kernel.org</a> and 
copy the last Kernel configuration from your PC/Notebook. Later you come to the menuconfig, at this point,
you can the Kernel configurate, build and installation get after safe the build.

# Build requirements
About 10GB+ free space on Disk
A faster CPU
4GB+ Ram and/or a larger SWAP Partiton

# Distro requirements

# Debian/Ubuntu
sudo apt-get install git fakeroot build-essential ncurses-dev xz-utils libssl-dev bc flex libelf-dev bison -y

# ArchLinux/Arch-based distros
sudo pacman -S git fakeroot base-devel zx openssl-1.0 bison bcc bcc-tools flex libelf -y


# !!Warning!! "I not warranty that's brick or damage you Linux-system"

<a href="https://www.kernel.org/doc/html/latest/index.html" title="Kernel Documentation">Linux Kernel Documentation</a>
