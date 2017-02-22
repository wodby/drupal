#!/usr/bin/env bash

set -ex

make start

docker exec --user=82 $NAME drush -r /var/www/html status | grep 'Drupal version *: *6\.38'
make clean