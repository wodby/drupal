#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

if ! [ -e "${DRUPAL_ROOT}/index.php" ]; then
    echo >&2 "${APP_NAME} not found in ${APP_ROOT} - copying now..."
    rsync -rlt "/usr/src/drupal/" "${APP_ROOT}/"
    echo >&2 "Complete! ${APP_NAME} has been successfully copied to ${APP_ROOT}"

    if [[ -z "${WODBY_APP_NAME}" ]]; then
        mkdir -p /var/www/files/config/sync_dir

        settings=$(cat <<'END_HEREDOC'
$databases['default']['default'] = [
    'host' => getenv('DB_HOST'),
    'database' => getenv('DB_NAME'),
    'username' => getenv('DB_USER'),
    'password' => getenv('DB_PASSWORD'),
    'driver' => getenv('DB_DRIVER'),
];

$config_directories['sync'] = '/var/www/files/config/sync_dir';
$settings['trusted_host_patterns'] = array(
    '\.localhost$',
    '\.local$',
    '\.loc$',
);
END_HEREDOC
)

        echo "${settings}" >> "${APP_ROOT}/web/sites/default/settings.php"
    fi
fi
