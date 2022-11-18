#!/bin/bash

function _combined_setup_help() {
  echo
  echo "linux_setup setup <command> [options]"
  echo
  echo "commands:"
  echo "  help      - this help screen"
  echo "  base      - setup ssh, git, antigen and zsh"
  echo
}

function _combined_setup() {
  local command=$1
  echo "$command"

  case $command in
  "base")
    _setup_ssh_files
    _setup_git
    _setup_antigen
    _setup_zsh
    ;;
  *) _combined_setup_help ;;
  esac
}
