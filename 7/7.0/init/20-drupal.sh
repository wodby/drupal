#!/usr/bin/env bash

set -e

if [[ ! -z "${DEBUG}" ]]; then
    set -x
fi

if ! [ -e web/index.php ]; then
    echo >&2 "Drupal not found in ${APP_ROOT} - copying now..."
    su-exec www-data rsync -rlt --delete --force "/usr/src/drupal/" "${APP_ROOT}/"
    echo >&2 "Complete! Drupal has been successfully copied to ${APP_ROOT}"
fi
