#!/bin/bash

function _setup_locals() {
  _display_message "ADDING .LOCALS"

  cp -r "${LOCALS_DIR}" ~

  echo "Complete"
}
