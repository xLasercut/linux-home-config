#!/bin/bash

function _display_message() {
  echo "--------------------------------"
  echo $1
  echo "--------------------------------"
}

# setup .ssh perms
_display_message "SSH PERMS"
chmod 700 ~/.ssh
chmod 600 ~/.ssh/*
chmod 644 ~/.ssh/*.pub

# copy zsh config
_display_message "ZSH CONFIG"
cp ./.zshrc ~

# install antigen
_display_message "ANTIGEN"
git clone https://github.com/zsh-users/antigen.git ~/antigen

# copy gitconfig
_display_message "GIT CONFIG"
cp ./.gitconfig ~

# add executables
if [[ $ADD_EXECUTABLE = 1 ]]
then
  _display_message "ADDING EXECUTABLES"
  sudo cp ./executables/* /usr/local/bin
fi

# add vm fixes
if [[ $ADD_VM_FIXES = 1 ]]
then
  _display_message "ADDING VM FIXES"
  sudo cp -r ./vm/* ~
fi
