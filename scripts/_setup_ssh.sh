#!/bin/bash

function _setup_ssh() {
  _display_message "SETTING SSH PERMS"

  echo "Apply 700 to ~/.ssh"
  chmod 700 ~/.ssh

  echo "Apply 600 to ~/.ssh/*"
  chmod 600 ~/.ssh/*

  echo "Apply 644 to ~/.ssh/*.pub"
  chmod 644 ~/.ssh/*.pub

  echo "Complete"
}
