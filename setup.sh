#!/bin/bash

# setup .ssh perms
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*
chmod 644 ~/.ssh/*.pub

# copy zsh config
cp ./.zshrc ~

# copy gitconfig
cp ./.gitconfig ~

# add executables
if [[ $ADD_EXECUTABLE = 1 ]]
then
  sudo cp ./executables/* /usr/local/bin
fi

# add vm fixes
if [[ $ADD_VM_FIXES = 1 ]]
then
  sudo cp -r ./vm/* ~
fi
