#!/bin/bash
# Level 5: The Boss Battle - Combining Basics

# Mission: Combine what you've learned! Write a script that:

#1. Creates a directory names 'Battlefield'
#2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
#3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
#4. List the contents of both Battlefield and Archive.



if [ ! -d "./Battlefield" ]; then

    mkdir Battlefield
    cd Battlefield/
    touch knight.txt sorcerer.txt rogue.txt 
    else
    cd Battlefield/
    touch knight.txt sorcerer.txt rogue.txt 
fi

if [ -f "knight.txt" ]; then

    if [ ! -d "./Archive" ]; then
        mkdir Archive
        mv ./knight.txt Archive
        else
        mv ./knight.txt Archive
    fi
fi