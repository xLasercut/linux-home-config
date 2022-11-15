#!/bin/bash

function _setup_executables() {
  _display_message "COPYING EXECUTABLES"

  echo "Copying executables from ${EXECUTABLES_DIR} to /usr/local/bin"

  sudo cp "${EXECUTABLES_DIR}/*" /usr/local/bin

  echo "Complete"
}
