#!/usr/bin/env bash

set -e

if [[ ! -z "${DEBUG}" ]]; then
    set -x
fi

if ! [ -e web/index.php ]; then
    echo >&2 "Drupal not found in ${APP_ROOT} - copying now..."
    su-exec www-data rsync -rlt --delete --force "/usr/src/drupal/" "${APP_ROOT}/"
    echo >&2 "Complete! Drupal has been successfully copied to ${APP_ROOT}"

    if [[ -z "${DRUPAL_VERSION}" ]]; then
        su-exec www-data mkdir -p /var/www/files/config/sync_dir

        settings=$(cat <<'END_HEREDOC'
$databases['default']['default'] = [
    'host' => getenv('DB_HOST'),
    'database' => getenv('DB_NAME'),
    'username' => getenv('DB_USERNAME'),
    'password' => getenv('DB_PASSWORD'),
    'driver' => getenv('DB_DRIVER'),
];

$config_directories['sync'] = '/var/www/files/config/sync_dir';
$settings['trusted_host_patterns'][] = 'drupal\.docker\.localhost';
END_HEREDOC
)

        echo "${settings}" >> "${APP_ROOT}/web/sites/default/settings.php"
    fi
fi
