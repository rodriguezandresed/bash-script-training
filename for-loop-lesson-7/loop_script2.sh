#!/bin/bash
# you can change 1 2 3 4 5 to {1..5}
for n in {1..10}
do
    echo $n
    sleep 1
done 

echo "This is outside of the for loop."