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
  cp -r ./vm/* ~
fi


# add .locals
if [[ $ADD_LOCALS = 1 ]]
then
  _display_message "ADDING .LOCALS"
  cp -r ./.local ~
fi

# add .themes
if [[ $ADD_THEMES = 1 ]]
then
  _display_message "ADDING THEMES"
  cp -r ./.themes ~
fi

# add fonts
if [[ $ADD_FONTS = 1 ]]
then
  _display_message "ADDING FONTS"
  cp -r ./.fonts ~
fi
