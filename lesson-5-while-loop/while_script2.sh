#!/bin/bash

while [ -f ./testfile ]
do 
    echo " as of $(date), the test file exists."
done

echo "As of $(date), the file has gone missing"