#!/bin/bash

echo "What is your favorite Linux distribution?"

echo "1 - Arch"
echo "2 - CentOS"
echo "3 - Debian"
echo "4 - Mint"
echo "5 - Ubuntu"
echo "6 - Something else..."

#read to ask the user to input a distribution
read distro;

case $distro in
#the end of every case needs to end with semicolons ;;
    1) echo "Arch is rolling release.";;
    2) echo "CentOS is popular on servers";;
    3) echo "Debian is a community distribution.";;
    4) echo "Mint is popular on desktops and laptops.";;
    5) echo "Ubuntu is popular on both servers and computers.";;
    6) echo "There are many distributions out there.";;
    #the last option doesn't need any semicolons
    *) echo "You didn't enter an appropiate choice"
esac