#!/bin/bash

for file in logfiles/*.log
do
#tar creates a zipfile with all files that end with .log
# -c creates archive / z so that archive will be unpacked in gzip / v is for verbose / f creates archive with given filename
    tar -czvf $file.tar.gz $file
done