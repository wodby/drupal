#!/usr/bin/env bash

set -e

if [[ ! -z "${DEBUG}" ]]; then
    set -x
fi

if ! [ -e web/index.php ]; then
    echo >&2 "Drupal not found in ${PWD} - copying now..."
    su-exec www-data rsync -rlt --delete --force "/usr/src/drupal/" "${PWD}/"
    echo >&2 "Complete! Drupal has been successfully copied to ${PWD}"

    if [[ -z "${DRUPAL_VERSION}" ]]; then
        settings=$(cat <<'END_HEREDOC'
$databases['default']['default'] = array_merge(
  $databases['default']['default'],
  [
    'host' => 'mariadb',
    'database' => 'drupal',
    'username' => 'drupal',
    'password' => 'drupal',
    'driver' => 'mysql',
  ]
);
END_HEREDOC
)

        echo "${settings}" >> "${APP_ROOT}/web/sites/default/settings.php"
    fi
fi
