#!/bin/bash

function _setup_zsh() {
  _display_message "SETTING UP ZSH CONFIG"

  echo "Copying ${ZSH_CONFIG} to ~"
  cp "${ZSH_CONFIG}" ~

  echo "antigen apply" >> ~/.zshrc

  echo "Change shell to zsh"
  chsh -s /bin/zsh

  echo "Complete"
}
