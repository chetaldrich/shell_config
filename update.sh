#!/bin/bash

# Chet Aldrich
# An install script for dotfiles
# that creates a symlink for each
# necessary folder.

chmod +x scripts/*
chmod +x lib.sh
source ./lib.sh

bird "Hello! Welcome to the interactive install prompt!"

read -r -p "Would you like to run the automated installation? (y/*)" response

if [[ $response =~ ^(yes|y|Y) ]];then
    install
else
    bird "Ok. Some other time."
fi