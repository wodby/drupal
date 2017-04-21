#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
  set -x
fi

if [[ ! -f "${APP_ROOT}/.ready" ]]; then
    echo >&2 'Error. Failed to copy Drupal.'
    exit 1
fi

echo 'Drupal has been copied!'
