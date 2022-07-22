#!/bin/bash
#Based on the name of the distro!

#Most distributions of linuxs have this file,
#It shows the distribution information (version, etc)
release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

#
check_exit_status() {
    if [ $? -ne 0 ]
    then 
        echo "An error ocurred, please check the $errorlog file."
    fi
}

#-q is quiet mode so it doesn't echo anything and grep searches strings
if grep -q "Arch" $release_file
then
    # The host is based on Arch, run the pacman update command
    # >> is append
    sudo pacman -Syu 1>>$logfile 2>>$errorlog
    check_exit_status
fi

## logical or || ; logical and &&
if grep -q "Debian" $release_file || grep -q "Ubuntu" $release_file 
then 
    # The host is based on Debian or Ubuntu,
    # Run the apt version of the command
    sudo apt update 1>>$logfile 2>>$errorlog
    check_exit_status
    
    sudo apt dist-upgrade -y 1>>$logfile 2>>$errorlog
    check_exit_status
fi