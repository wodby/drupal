#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

if [[ ! -f "${DRUPAL_ROOT}/index.php" ]]; then
    echo >&2 "${APP_NAME} not found in ${APP_ROOT} - copying now..."
    rsync -rlt "/usr/src/drupal/" "${APP_ROOT}/"
    echo >&2 "Complete! ${APP_NAME} has been successfully copied to ${APP_ROOT}"

    if [[ -z "${WODBY_APP_NAME}" ]]; then
        mkdir -p /var/www/files/config/sync_dir
        gotpl /etc/gotpl/settings.php.tpl >> "${APP_ROOT}/web/sites/default/settings.php"
    fi
fi
