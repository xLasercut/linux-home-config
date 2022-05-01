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
read -p "Add executables? (y/n): " is_executables
if [[ $is_executables = "y" ]]
then
  sudo cp ./executables/* /usr/local/bin
fi

# add vm fixes
read -p "Add vm fixes? (y/n): " is_vm_fix
if [[ $is_executables = "y" ]]
then
  sudo cp -r ./vm/* ~
fi
