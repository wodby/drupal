#!/usr/bin/env bash

set -e

if [[ ! -z "${DEBUG}" ]]; then
    set -x
fi

if ! [ -e index.php ]; then
    echo >&2 "Drupal not found in ${PWD} - copying now..."
    su-exec www-data rsync -rlt --delete --force "/usr/src/drupal/" "${PWD}/"
    echo >&2 "Complete! Drupal has been successfully copied to ${PWD}"

    if [[ -z "${DRUPAL_VERSION}" ]]; then
        settings=$(cat <<'END_HEREDOC'

$db_url = 'mysql://drupal:drupal@mariadb/drupal';
END_HEREDOC
)

        echo "${settings}" >> "${APP_ROOT}/sites/default/settings.php"
    fi
fi
