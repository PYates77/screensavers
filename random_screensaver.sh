#!/usr/bin/env bash
SCREENSAVER_DIR=.
SCREENSAVER_GLOB="*_screensaver.sh"
THIS_SCRIPT=$(basename -- "${BASH_SOURCE[0]}")

screensaver_scripts=$(find "${SCREENSAVER_DIR}" -maxdepth 1 -type f -executable -not -name "${THIS_SCRIPT}")
selected=$(shuf -n 1 -e -- ${screensaver_scripts})
#echo "running screensaver script: '${selected}'"
exec $selected
