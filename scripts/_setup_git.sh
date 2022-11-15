#!/bin/bash

function _setup_git() {
  _display_message "SETTING UP GIT CONFIG"

  git config --global difftool.prompt "false"
  git config --global core.editor "vim"
  git config --global credential.helper "store"
  echo "git user.name: "
  read -r git_username
  git config --global user.name "$git_username"
  echo "git user.email: "
  read -r git_usermail
  git config --global user.email "$git_usermail"

  echo "Complete"
}
