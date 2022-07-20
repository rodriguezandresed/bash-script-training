#!/bin/bash

package=htop

# >> means redirect so instead of showing the result on the console, it saves the output to the file directed
sudo apt install $package >> package_install_results.log

if [ $? -eq 0 ]
then
    echo "The installation of $package was successful."
    echo "The new command is available here:"
    which $package
else
    echo "$package failed to install." >> package_install failure.log
fi