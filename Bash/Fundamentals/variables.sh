#!/bin/bash

# Define variables
greeting="Hello"
name="Mohammed"
exclamation="!"

# Use variables in an echo command
echo "$greeting, $name$exclamation"

# You can reuse these in multiple different ways

echo "$greeting$exclamation, $name.. what can i do for you?"

# Can further define variables and use them later on

second_greeting="Salam!"
second_name="Adam"

echo "$greeting$exclamation, $second_name.."

# Enviorment variables 

my_home="$HOME"

echo "Home Directory: $my_home"  # This is now using local variables instead of env variables
echo "Current user is: $USERNAME"
echo "What is the OS type?: $OSTYPE"

# Standard Enviorment Variables

echo "Username: $USERNAME"
echo "Shell: $SHELL"
echo "Current directory: $PWD"

# Executable PATH

echo "The PATH: $PATH"
echo "Default language: $LANG"

