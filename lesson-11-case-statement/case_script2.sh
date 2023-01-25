#!/bin/bash

finished=0

while [ $finished -ne 1 ]
do
    echo "What is your favorite Linux distribution?"

    echo "1 - Arch"
    echo "2 - CentOS"
    echo "3 - Debian"
    echo "4 - Mint"
    echo "5 - Ubuntu"
    echo "6 - Something else..."
    echo "7 - Exit the script."

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
        7) finished=1 ;;
        #the last option doesn't need any semicolons
        *) echo "You didn't enter an appropiate choice"
    esac
done

echo "Thank you for using this script."