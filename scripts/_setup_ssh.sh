#!/bin/bash

function _setup_ssh_help() {
  echo
  echo "linux_setup ssh <command>"
  echo
  echo "commands:"
  echo "  help      - this help screen"
  echo "  file      - set permissions for .ssh files"
  echo "  server    - enable public key authentication and enable ssh server"
  echo
}

function _setup_ssh() {
  local command=$1

  case $command in
  "file") _setup_ssh_files ;;
  "server") _setup_ssh_server ;;
  *) _setup_ssh_help ;;
  esac
}

function _setup_ssh_server() {
  _display_message "STARTING SSH SERVER"

  echo "starting sshd"
  sudo sed -i -e '/#PubkeyAuthentication/ s/.*/PubkeyAuthentication yes/' /etc/ssh/ssh_config
  sudo systemctl start sshd.service
  sudo systemctl enable sshd.service

  echo "Complete"
}

function _setup_ssh_files() {
  _display_message "SETTING SSH PERMS"

  echo "Apply 700 to ~/.ssh"
  chmod 700 ~/.ssh

  echo "Apply 600 to ~/.ssh/*"
  chmod 600 ~/.ssh/*

  echo "Apply 644 to ~/.ssh/*.pub"
  chmod 644 ~/.ssh/*.pub

  echo "Complete"
}
