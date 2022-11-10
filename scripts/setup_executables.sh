#!/bin/bash

source "./_helpers.sh"
source "./_constants.sh"

_display_message "COPYING EXECUTABLES"

echo "Copying executables from ${EXECUTABLES_DIR} to /usr/local/bin"

sudo cp "${EXECUTABLES_DIR}/*" /usr/local/bin

echo "Complete"
