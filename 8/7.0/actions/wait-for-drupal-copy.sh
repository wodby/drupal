#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
  set -x
fi

ready=0
max_try=$1
wait_seconds=$2

for i in $(seq 1 "${max_try}"); do
    if [[ -f "${APP_ROOT}/.ready" ]]; then
        ready=1
        break
    fi
    echo 'Drupal is copying...'
    sleep "${wait_seconds}"
done

if [[ "${ready}" -eq '0' ]]; then
    echo >&2 'Error. Failed to copy Drupal.'
    exit 1
fi

echo 'Drupal has been copied!'
