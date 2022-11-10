#!/bin/bash

source "./_helpers.sh"

_display_message "SETTING UP GIT CONFIG"

git config --global difftool.prompt "false"
git config --global core.editor "vim"
git config --global credential.helper "store"
read -r -p "git user.name: " git_username
git config --global user.name "$git_username"
read -r -p "git user.email: " git_usermail
git config --global user.email "$git_usermail"

echo "Complete"
