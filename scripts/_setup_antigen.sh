#!/bin/bash

function _setup_antigen() {
  _display_message "ANTIGEN"

  echo "Installing antigen..."

  git clone https://github.com/zsh-users/antigen.git ~/antigen

  echo "Complete"
}
