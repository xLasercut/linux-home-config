#!/bin/bash

source "./_helpers.sh"
source "./_constants.sh"

_display_message "SETTING UP ZSH CONFIG"

echo "Copying ${ZSH_CONFIG} to ~"
cp "${ZSH_CONFIG}" ~

echo "Complete"
