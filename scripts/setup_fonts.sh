#!/bin/bash

source "./_helpers.sh"
source "./_constants.sh"

_display_message "SETTING UP FONTS"

echo "Copying ${FONTS_DIR} to home..."

cp -r "${FONTS_DIR}" ~

echo "Complete"
