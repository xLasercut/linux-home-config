#!/bin/bash

function _setup_fonts() {
  _display_message "SETTING UP FONTS"

  echo "Copying ${FONTS_DIR} to home..."

  cp -r "${FONTS_DIR}" ~

  echo "Complete"
}
