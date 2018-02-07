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

if [[ ! -f "${APP_ROOT}/web/index.php" ]]; then
    echo >&2 "${APP_NAME} not found in ${APP_ROOT} - copying now..."
    rsync -rltogp "/usr/src/drupal/" "${APP_ROOT}/"
    echo >&2 "Complete! ${APP_NAME} has been successfully copied to ${APP_ROOT}"

    if [[ -z "${WODBY_APP_NAME}" ]]; then
        su-exec www-data mkdir -p /var/www/files/config/sync_dir
        su-exec www-data gotpl /etc/gotpl/settings.php.tpl >> "${APP_ROOT}/web/sites/default/settings.php"
    fi
fi
