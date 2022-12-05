#!/bin/bash

function _setup_configs() {
  _display_message "ADDING .CONFIG"

  cp -r "${CONFIGS_DIR}" ~

  echo "Complete"
}
