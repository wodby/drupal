#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

if ! [ -e "${APP_ROOT}/web/index.php" ]; then
    echo >&2 "Drupal not found in ${APP_ROOT} - copying now..."
    chown -R www-data:www-data "${APP_ROOT}"
    rsync -roglt "/usr/src/drupal/" "${APP_ROOT}/"
    touch "${APP_ROOT}/.ready"
    echo >&2 "Complete! Drupal has been successfully copied to ${APP_ROOT}"
fi
