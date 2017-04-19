#!/usr/bin/env bash

set -e

if [[ ! -z "${DEBUG}" ]]; then
    set -x
fi

make start

echo "Wait for Drupal to be copied"
sleep 3
echo -n "Checking Drupal version... "
docker exec --user=82 "${NAME}" drush -r /var/www/html/web status | grep -q 'Drupal version *: *6\.38'
echo "OK"

make clean