#!/bin/bash
#normal path for htop on linux
command=/usr/bin/htop

if [ -f $command ]
then 
    echo "$command is available, let's run it!"
else    
    echo "$command is NOT available, installing it..."
    #sudo apt update, updates packages, you should do it daily
    # && allows us to chain commands if the 1st command is successful
    # -y means assume yes so it doesn't prompts
    sudo apt update && sudo apt install -y htop

fi
#It just runs the program when it finishes installing or if it's installed
$command 