#!/usr/bin/env bash

set -e

if [[ ! -z "${DEBUG}" ]]; then
    set -x
fi

if ! [ -e ./web/index.php ]; then
    echo >&2 "Drupal not found in ${APP_ROOT} - copying now..."
    chown -R www-data:www-data "${APP_ROOT}"
    su-exec www-data mkdir -p web
    rsync -roglt "/usr/src/drupal/" "${APP_ROOT}/web"
    echo >&2 "Complete! Drupal has been successfully copied to ${APP_ROOT}"

    if [[ -z "${DRUPAL_VERSION}" ]]; then
        cd "${APP_ROOT}/web/sites/default"
        su-exec www-data cp "default.settings.php" "settings.php"
    fi
fi
