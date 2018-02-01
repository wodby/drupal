#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

# Run as root to avoid volumes permissions issues for good.
if [[ "${EUID}" != 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi

if [[ ! -f "${DRUPAL_ROOT}/index.php" ]]; then
    echo >&2 "${APP_NAME} not found in ${APP_ROOT} - copying now..."
    rsync -rltogp "/usr/src/drupal/" "${APP_ROOT}/"
    echo >&2 "Complete! ${APP_NAME} has been successfully copied to ${APP_ROOT}"
fi
