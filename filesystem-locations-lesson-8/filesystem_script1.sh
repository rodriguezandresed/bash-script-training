#!/bin/bash
#Based on the name of the distro!

#Most distributions of linuxs have this file,
#It shows the distribution information (version, etc)
release_file=/etc/os-release

#-q is quiet mode so it doesn't echo anything and grep searches strings
if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command
    sudo pacman -Syu
fi

## logical or || ; logical and &&
if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file 
then 
    # The host is based on Debian or Ubuntu,
    # Run the apt version of the command
    sudo apt update
    sudo apt dist-upgrade
fi