#!/bin/bash
# ~ represents home directory on Linux, rm -> remove on linux
# -f is find, to find something, to search directories, you can use -d
if [ -f ./myfile ]
then
    echo "The file exists."
else 
    echo "The file does not exist"
fi

# the which command on linux allows us to search executables that are on our OS, for example which ping, will tell you the path for the ping command