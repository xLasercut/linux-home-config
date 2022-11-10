#!/bin/bash

source "./_helpers.sh"

_display_message "ANTIGEN"

echo "Installing antigen..."

git clone https://github.com/zsh-users/antigen.git ~/antigen

echo "Complete"
