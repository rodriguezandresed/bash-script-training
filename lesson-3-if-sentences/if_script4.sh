#!/bin/bash
#normal path for htop on linux
command=htop

#brackets are only needed if you use the tests commands! the brackets are actually using the
# the test command on the background!


# the command command, checks for the existence of a command, -v is for verbose
if command -v $command
then 
    echo "$command is available, let's run it!"
else    
    echo "$command is NOT available, installing it..."
    #sudo apt update, updates packages, you should do it daily
    # && allows us to chain commands if the 1st command is successful
    # -y means assume yes so it doesn't prompts
    sudo apt update && sudo apt install -y $command

fi
#It just runs the program when it finishes installing or if it's installed
$command 