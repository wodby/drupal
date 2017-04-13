#!/usr/bin/env bash

if ! [ -e web/index.php ]; then
    echo >&2 "Drupal not found in ${PWD} - copying now..."
    su-exec www-data rsync -rlt --delete --force "/usr/src/drupal/" "${PWD}/"
    echo >&2 "Complete! Drupal has been successfully copied to ${PWD}"
fi
