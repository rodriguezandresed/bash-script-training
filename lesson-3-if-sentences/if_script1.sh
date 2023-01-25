#!/bin/bash

mynum=300

if [ $mynum -eq 200 ] 
then
    echo "The condition is true."
else
    echo "The variable does not equal 200."
fi

if [ ! $mynum -eq 200 ] 
then
    echo "The condition is true. Negated"
else
    echo "The variable does not equal 200. Negated"
fi

if [ $mynum -ne 200 ] 
then
    echo "The condition is true. Using Not Equal"
else
    echo "The variable does not equal 200. Using Not Equal"
fi

if [ $mynum -gt 200 ] 
then
    echo "The condition is true. Using Greater Than"
else
    echo "The variable does not equal 200. Using Greater Than"
fi