#!/bin/bash

function _setup_aws() {
  _display_message "AWS"

  echo "Setting up aws assume role"

  wget -qO- https://raw.githubusercontent.com/xLasercut/aws-assume-role/master/install.sh | SHELL_FILE="$HOME/.zshrc" sh

  echo "Complete"
}
