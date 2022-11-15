#!/bin/bash

REPO_ROOT=$(cd "$(dirname "${BASH_SOURCE[0]:-$0}")" && pwd)

for script_file in "$REPO_ROOT"/scripts/*.sh; do
  source "$script_file"
done

function _linux_setup_help() {
  echo
  echo "linux_setup <command> [options]"
  echo
  echo "commands:"
  echo "  help        - this help screen"
  echo "  ssh         - setup ssh"
  echo "  antigen     - install and setup antigen"
  echo "  executables - install executables"
  echo "  fonts       - install fonts"
  echo "  git         - setup git"
  echo "  locals      - install .local files"
  echo "  themes      - install themes"
  echo "  vmfix       - install fixes for vmware"
  echo "  zsh         - setup zsh"
  echo "  update      - update repo resources"
  echo
}

function linux_setup() {
  local current_dir
  current_dir=$(pwd)
  local command=$1

  cd "$REPO_ROOT" || return 1

  case $command in
  "ssh") _setup_ssh ;;
  "antigen") _setup_antigen ;;
  "executables") _setup_executables ;;
  "fonts") _setup_fonts ;;
  "git") _setup_git ;;
  "locals") _setup_locals ;;
  "themes") _setup_themes ;;
  "vmfix") _setup_vm_fixes ;;
  "zsh") _setup_zsh ;;
  "update") _update "${@:2}" ;;
  "setup") _combined_setup "${@:2}" ;;
  *) _linux_setup_help ;;
  esac

  cd "$current_dir" || return 1
}

echo "Usage: linux_setup"
