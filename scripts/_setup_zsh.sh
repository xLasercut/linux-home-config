#!/bin/bash

function _setup_zsh() {
  _display_message "SETTING UP ZSH CONFIG"

  echo "Copying ${ZSH_CONFIG} to ~"
  cp "${ZSH_CONFIG}" ~

  echo "antigen apply" >> ~/.zshrc

  echo "Complete"
}
