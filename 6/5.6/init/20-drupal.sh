#!/usr/bin/env bash

set -e

if [[ ! -z "${DEBUG}" ]]; then
    set -x
fi

if ! [ -e ./web/index.php ]; then
    su-exec www-data mkdir -p web
    echo >&2 "Drupal not found in ${APP_ROOT} - copying now..."
    su-exec www-data rsync -rlt --delete --force "/usr/src/drupal/" "${APP_ROOT}/web"
    echo >&2 "Complete! Drupal has been successfully copied to ${APP_ROOT}"

    if [[ -z "${DRUPAL_VERSION}" ]]; then
        settings=$(cat <<'END_HEREDOC'
<?php

$db_settings = array(
  'host' => getenv('DB_HOST'),
  'database' => getenv('DB_NAME'),
  'username' => getenv('DB_USERNAME'),
  'password' => getenv('DB_PASSWORD'),
  'driver' => getenv('DB_DRIVER'),
);

$db_url = strtr('driver://username:password@host/database', $db_settings);
END_HEREDOC
)

        echo "${settings}" > "${APP_ROOT}/web/sites/default/settings.php"
        chown www-data:www-data "${APP_ROOT}/web/sites/default/settings.php"
    fi
fi
