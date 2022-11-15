#!/bin/bash

function _setup_themes() {
  _display_message "ADDING THEMES"

  cp -r "${THEMES_DIR}" ~

  echo "Complete"
}
