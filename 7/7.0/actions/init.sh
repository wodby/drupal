#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

if ! [ -e "${APP_ROOT}/web/index.php" ]; then
    echo >&2 "Drupal not found in ${APP_ROOT} - copying now..."
    rsync -rlt "/usr/src/drupal/" "${APP_ROOT}/"
    echo >&2 "Complete! Drupal has been successfully copied to ${APP_ROOT}"
fi
