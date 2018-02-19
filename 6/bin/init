#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

if [[ ! -f "${APP_ROOT}/web/index.php" ]]; then
    echo >&2 "Drupal not found in ${APP_ROOT} - copying now..."
    rsync -rltogp "/usr/src/drupal/" "${APP_ROOT}/web"
    echo >&2 "Complete! Drupal has been successfully copied to ${APP_ROOT}"

    if [[ -z "${WODBY_APP_NAME}" ]]; then
        path="${APP_ROOT}/web/sites/default/"
        su-exec wodby cp "${path}/default.settings.php" "${path}/settings.php"
    fi
fi
