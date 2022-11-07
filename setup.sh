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
git config --global difftool.prompt "false"
git config --global core.editor "vim"
git config --global credential.helper "store"
read -r -p "git user.name: " git_username
git config --global user.name "$git_username"
read -r -p "git user.email: " git_usermail
git config --global user.email "$git_usermail"


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
  mkdir -p ~/.fonts
  popd ~/.fonts
  curl -fLo "JetBrains Mono Medium Nerd Font Complete Mono.ttf" https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/JetBrainsMono/Ligatures/Medium/complete/JetBrains%20Mono%20Medium%20Nerd%20Font%20Complete%20Mono.ttf
  curl -fLo "JetBrainsMono-Bold.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-Bold.ttf
  curl -fLo "JetBrainsMono-BoldItalic.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-BoldItalic.ttf
  curl -fLo "JetBrainsMono-ExtraBold.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-ExtraBold.ttf
  curl -fLo "JetBrainsMono-ExtraBoldItalic.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-ExtraBoldItalic.ttf
  curl -fLo "JetBrainsMono-ExtraLight.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-ExtraLight.ttf
  curl -fLo "JetBrainsMono-ExtraLightItalic.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-ExtraLightItalic.ttf
  curl -fLo "JetBrainsMono-Italic.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-Italic.ttf
  curl -fLo "JetBrainsMono-Light.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-Light.ttf
  curl -fLo "JetBrainsMono-LightItalic.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-LightItalic.ttf
  curl -fLo "JetBrainsMono-Medium.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-Medium.ttf
  curl -fLo "JetBrainsMono-MediumItalic.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-MediumItalic.ttf
  curl -fLo "JetBrainsMono-Regular.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-Regular.ttf
  curl -fLo "JetBrainsMono-SemiBold.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-SemiBold.ttf
  curl -fLo "JetBrainsMono-SemiBoldItalic.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-SemiBoldItalic.ttf
  curl -fLo "JetBrainsMono-Thin.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-Thin.ttf
  curl -fLo "JetBrainsMono-ThinItalic.ttf" https://github.com/JetBrains/JetBrainsMono/blob/master/fonts/ttf/JetBrainsMono-ThinItalic.ttf
  pushd
fi
