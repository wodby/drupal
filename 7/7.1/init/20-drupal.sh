#!/usr/bin/env bash

set -e

if [[ -n "${DEBUG}" ]]; then
    set -x
fi

if [[ -z "${DRUPAL_VERSION}" && -z "${DRUPAL_SKIP_INIT}" ]]; then
    su-exec www-data make init -f /usr/local/bin/actions.mk
fi