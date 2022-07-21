#!/bin/bash

directory=/etc
#WATCH OUT FOR THE POSITIONING OF $? AS AN ECHO WILL MAKE IT SET TO 0

if [ -d $directory ]
then
    echo "The directory $directory exists."
else
    echo "The directory $directory doesn't exist."
fi

#THIS $? WILL ALWAYS BE 0 AS THE ECHO WILL RUN
echo "The exit code for this script run is $?"