#!/bin/bash

source "./_helpers.sh"
source "./_constants.sh"


_display_message "ADDING .LOCALS"

cp -r "${LOCALS_DIR}" ~

echo "Complete"
