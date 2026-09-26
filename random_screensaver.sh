#!/usr/bin/env bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
THIS_SCRIPT=$(basename -- "${BASH_SOURCE[0]}")
SCREENSAVER_DIR=${SCRIPT_DIR}
SCREENSAVER_GLOB="*_screensaver.sh"

screensaver_scripts=$(find "${SCREENSAVER_DIR}" -maxdepth 1 -type f -executable -not -name "${THIS_SCRIPT}")
screensavers=$(shuf -e -- ${screensaver_scripts})
for screensaver in ${screensavers}; do
  echo "running ${screensaver}"
  bash ${screensaver}
  if [ $? -eq 0 ]; then
    break
  else
    echo "failed to run ${screensaver}"
  fi
done
